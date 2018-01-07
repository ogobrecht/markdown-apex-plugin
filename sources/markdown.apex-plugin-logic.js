// global markdown object
var markdown = {};
markdown.pluginVersion = "x.x.x";
markdown.options = {};
markdown.substitutions = {};
markdown.statistics = {};
markdown.tools = {};
markdown.editors = {};

// default options
markdown.options.debug = false;
markdown.options.sanitizingConverter = true;
markdown.options.tryToUseOriginalValueFromDisplayOnlyItems = false;
markdown.options.syntaxHighlighting = false;
markdown.options.markdownExtra = false;
markdown.options.markdownExtraExtensions = [];
markdown.options.preConversionFunction = '';
markdown.options.postConversionFunction = '';

// substitutions (variables are set on page load from within plugin source)
markdown.substitutions.image_prefix = null;
markdown.substitutions.image_prefix_regexp = new RegExp('#image_prefix#', 'gi');
markdown.substitutions.app_images = null;
markdown.substitutions.app_images_regexp = new RegExp('#app_images#', 'gi');
markdown.substitutions.workspace_images = null;
markdown.substitutions.workspace_images_regexp = new RegExp('#workspace_images#', 'gi');
markdown.substitutions.images = null;
markdown.substitutions.images_regexp = new RegExp('#images#', 'gi');

// statistic variables
markdown.statistics.renderedHtmlFragments = 0;
markdown.statistics.sumRenderingTimeHtmlFragments = 0;
markdown.statistics.averageRenderingTimeHtmlFragment = 0;
markdown.statistics.createdEditors = 0;
markdown.statistics.sumCreationTimeEditors = 0;
markdown.statistics.averageCreationTimeEditor = 0;
markdown.statistics.overallRunTimeWithoutPreviewRendering = 0;
if (!Date.now) {
	Date.now = function () {
		return new Date().getTime();
	};
}

// TOOLS

markdown.tools.triggerApexEvent = function(domNode, event, data) {
	if (markdown.apexPluginId) {
		apex.event.trigger(domNode, event, data);
	}
};

markdown.tools.normalizeIdentifier = function(text) {
	return text.replace(/([^a-zA-Z0-9_])/g,"_");
};


//------------------------------------------------------------------------------
// helper functions

// jQUery function to check for attributes
// http://stackoverflow.com/questions/1318076/jquery-hasattr-checking-to-see-if-there-is-an-attribute-on-an-element
$.fn.hasAttr = function(name) {
	return (typeof this.attr(name) !== 'undefined' && this.attr(name) !== false);
};


// this should run only one time per page, in the plugin we run this via APEX_JAVASCRIPT.ADD_ONLOAD_CODE
// procedure and passing the key parameter to ensure, that it is running only one time
markdown.init = function () {

	// initialize one converter function for all conversions
	if (markdown.options.sanitizingConverter){
		markdown.converter = Markdown.getSanitizingConverter();
	}
	else {
		markdown.converter = new Markdown.Converter();
	}

	// initialize Markdown Extra, if configured
	if (markdown.options.markdownExtra) {
		Markdown.Extra.init(
			markdown.converter,
			{
				highlighter: "highlight",
				extensions: markdown.options.markdownExtraExtensions
			}
		);
	}

	// Register a pre conversion function for image substitutions, clean up APEX
	// engine generated <br> tags in display only items, a user specific pre
	// conversion function and also minimal parsing of YAML header for title,
	// author, date.
	markdown.converter.hooks.chain("preConversion", function (text) {
		var yamlHeader, title, author, date;
		// APEX render engine fixes, image paths
		text = text
			.replace(/<br>/gi, '\n')
			.replace(markdown.substitutions.image_prefix_regexp, markdown.substitutions.image_prefix)
			.replace(markdown.substitutions.app_images_regexp, markdown.substitutions.app_images)
			.replace(markdown.substitutions.workspace_images_regexp, markdown.substitutions.workspace_images)
			.replace(markdown.substitutions.images_regexp, markdown.substitutions.images);
		if (typeof markdown.options.preConversionFunction === "function") {
			text = markdown.options.preConversionFunction(text);
		}
		if (markdown.options.parseYamlHeader) {
			// YAML header
			yamlHeader = text.match(/^\s*-{3}\s+([\s\S]+?)(?:-|\.){3}/);
			if (yamlHeader) {
				if (yamlHeader.length >= 1) {
					yamlHeader = yamlHeader[1];
					title = yamlHeader.match(/^title: *(.*)$/im);
					if (title && title.length >= 1) {title = title[1];}
					author = yamlHeader.match(/^author: *(.*)$/im);
					if (author && author.length >= 1) {author = author[1];}
					date = yamlHeader.match(/^date: *(.*)$/im);
					if (date && date.length >= 1) {date = date[1];}
				}
				text = text.replace(/^\s*-{3}\s+[\s\S]+?(?:-|\.){3}/,
					(title ? '# ' + title + '\n' : '') +
					(author ? '## ' + author + '\n' : '') +
					(date ? '### ' + date + '\n' : ''));
			}			
		}
		return text;
	});

	// Register a post conversion function
	markdown.converter.hooks.chain("postConversion", function (text) {
		if (typeof markdown.options.postConversionFunction === "function") {
			text = markdown.options.postConversionFunction(text);
		}
		return text;
	});


};


markdown.printStatistics = function () {
	console.log(
		'Markdown plugin - runtime statistics\n' +
		'========================================\n' +
		'                   Plugin version: ' + markdown.pluginVersion + '\n' +
		'        Number of created editors: ' + markdown.statistics.createdEditors + '\n' +
		( markdown.statistics.createdEditors > 0 ?
		'            Average creation time: ' + markdown.statistics.averageCreationTimeEditor + 'ms\n' : '' ) +
		'Number of rendered HTML fragments: ' + markdown.statistics.renderedHtmlFragments + '\n' +
		( markdown.statistics.renderedHtmlFragments > 0 ?
		'           Average rendering time: ' + markdown.statistics.averageRenderingTimeHtmlFragment + 'ms\n' : '' ) +
		' Overall runtime without previews: ' + markdown.statistics.overallRunTimeWithoutPreviewRendering + 'ms'
	);
};


markdown.maximizeItem = function (itemType, selector, regionIsNthParent, offsetBottom, debug) {
	$(selector).each( function() {
		var item = $(this);
		// jQuery eq function start count with 0, we want start count with 1
		var region = item.parents().eq(regionIsNthParent -1);
		var maximizeEditor = function() {
			item.width( region.width() - parseInt(region.css('padding-left')) - parseInt(region.css('padding-right')) )
				.height( $(window).height() - item.offset().top - offsetBottom );
		};
		var maximizePreview = function() {
			region.css( 'overflow','auto' )
				.height( $(window).height() - region.offset().top - offsetBottom );
		};

		if (itemType === 'editor') maximizeEditor();
		else if (itemType === 'preview') maximizePreview();

		if (debug) region.css('border','1px solid red');
		else $(window).resize(function () {
			if (itemType === 'editor') maximizeEditor();
			else if (itemType === 'preview') maximizePreview();
		});
	});
};


// The APEX converter function for dynamic actions.
// We search from the triggering element downwards for the class markdown and
// depending on the DOM element type we create editors (on textareas) or
// we convert markdown to HTML (for the rest of elements). It is up to the
// developer to create the right dynamic actions in a page - not everything
// makes sense. A commonly use case is to create one dynamic action on the
// whole document for the event page load. Additionally dynamic actions are
// only useful on elements, who are refreshed by a partial page refresh,
// normally reports on the apex after refresh framework event.

markdown.makeHtmlOrCreateEditors = function (triggeringElement) {
	var startTime, runTime, element;

	//--------------------------------------------------------------------------
	// convert read only items and other markdown content like in reports

	startTime = Date.now();

	// find all markdown content except textareas (editors) and input elements (makes no sense)
	$(triggeringElement).find('.markdown').not('textarea,input,.wmd-preview,.rendered').each(function () {

		// set element and add class to prevent double rendering
		element = $(this).addClass('rendered');

		// statistics
		markdown.statistics.renderedHtmlFragments += 1;

		// convert to html
		element.html(
			markdown.converter.makeHtml(
				// if configured, try to read hidden(original) value from display only item
				// for security reasons (script injection) we do this only, if sanitizing converter is configured
				( markdown.options.sanitizingConverter &&
				  markdown.options.tryToUseOriginalValueFromDisplayOnlyItems &&
				  element.hasAttr('id') ?
					// hidden input for display only item has the same id without _DISPLAY / fallback to current HTML
					$( 'input#' + element.attr('id').replace('_DISPLAY', '') ).val() || element.html() :
					// if no id existing use current HTML
					element.html()
				)
			)
		);

		// if configured, do syntax highlighting
		if (markdown.options.syntaxHighlighting) {
			element.find('pre code').each(function (i, block) {
				hljs.highlightBlock(block);
			});
		}

	});

	// sum up run time
	runTime = Date.now() - startTime;
	markdown.statistics.sumRenderingTimeHtmlFragments += runTime;
	if (markdown.statistics.renderedHtmlFragments > 0) {
		markdown.statistics.averageRenderingTimeHtmlFragment = Math.round(
			markdown.statistics.sumRenderingTimeHtmlFragments / markdown.statistics.renderedHtmlFragments
		);
	}
	markdown.statistics.overallRunTimeWithoutPreviewRendering += runTime;


	//--------------------------------------------------------------------------
	// change textareas to editors

	startTime = Date.now();

	// find all relevant textareas
	$(triggeringElement).find('textarea.markdown').not('.rendered').each(function () {

		var element = $(this).addClass('rendered');
		var normalizedId = markdown.tools.normalizeIdentifier(element.attr('id'));

		if (!normalizedId) {
			error.error("Your text area needs to have an id attribute before we can use it as a Markdown editor!", element);
		}
		else {
			markdown.statistics.createdEditors += 1;
			var customPreviewId = element.attr('id') + '_PREVIEW';
			var previewElement = '<div id="wmd-preview-' + markdown.statistics.createdEditors +
				'" class="wmd-panel wmd-preview markdown"></div>';

			// create the needed elements for the editor: panel button bar, preview
			element
				.addClass('wmd-input')
				.parent()
				.wrap('<div class="wmd-panel-' + markdown.statistics.createdEditors + '"' +
					($('#'+customPreviewId).length == 1 ? '' : ' id="'+customPreviewId+'"') + '></div>')
				.before('<div id="wmd-button-bar-' + markdown.statistics.createdEditors + '"></div>');

			// add preview to custom preview container
			$('#'+customPreviewId).append(previewElement);

			// create the editor
			markdown.editors[normalizedId] = new Markdown.Editor(
				markdown.converter,                       // the converter object
				'-' + markdown.statistics.createdEditors, // the postfix used to distinguish between multiple editors, e.g. '-1'
				element.attr('id')                        // the ID of the APEX textarea (this option ist the alignment for APEX)
				// the fourth parameter is an optional object for the help button, see README.html for third parameter!
				// we omit this parameter at the moment, therefore no help button is rendered
			);

			// start the editor
			markdown.editors[normalizedId].run();

			// register function for triggering APEX event after preview has refreshed
			markdown.editors[normalizedId].hooks.chain("onPreviewRefresh", function () {
				markdown.tools.triggerApexEvent($('#'+customPreviewId), "net_gobrechts_markdown_preview_refreshed");
			});

			// enable syntax highlighting, if configured
			if (markdown.options.syntaxHighlighting) {

				// preview selector for syntax highlighting
				var previewSelector = '#wmd-preview-' + markdown.statistics.createdEditors + ' pre code';

				// highlight syntax immediately for the current editor content
				$(previewSelector).each(function (i, block) {
					hljs.highlightBlock(block);
				});

				// register the syntax highlighting for each preview refresh
				markdown.editors[normalizedId].hooks.chain("onPreviewRefresh", function () {
					$(previewSelector).each(function (i, block) {
						hljs.highlightBlock(block);
					});
				});

			}
		}

	});

	// sum up run time
	runTime = Date.now() - startTime;
	markdown.statistics.sumCreationTimeEditors += runTime;
	if (markdown.statistics.createdEditors > 0) {
		markdown.statistics.averageCreationTimeEditor = Math.round(
			markdown.statistics.sumCreationTimeEditors / markdown.statistics.createdEditors
		);
	}
	markdown.statistics.overallRunTimeWithoutPreviewRendering += runTime;


	//--------------------------------------------------------------------------
	// write statistics to console, if we are in debug mode

	if (markdown.options.debug) {
		markdown.printStatistics();
	}

};
