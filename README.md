Please do not download directly this code - this is the development version and can be unstable. You can find the [latest stable version here] (https://github.com/ogobrecht/markdown-apex-plugin/releases/latest).


# Oracle APEX Dynamic Action Type Plugin: Markdown

_This Oracle APEX plugin uses the Stack Overflow JavaScript Markdown implementation to turn textareas into Markdown editors and convert Markdown formatted text into HTML._

- Works with APEX versions 4.2.x and 5.x
- Turns a standard APEX text area into a Markdown editor only by setting the form element class to `markdown`
    - Live preview of the rendered text
    - Supports the readonly mode of the textarea
- Converts the content of all other non HTML form elements with a class `markdown` to HTML
- Can be used on dynamic content like reports
- Support for the following Markdown Extra extensions: tables, fenced code blocks, definition lists, footnotes, special attributes, SmartyPants, newlines and strikethrough à la GitHub
- Support for the well known image substitution strings (also in lowercase) in the live preview: &#35;image_prefix&#35;, &#35;app_images&#35;, &#35;workspace_images&#35; and additionally &#35;images&#35;, which is configurable with a own image function
- Syntax highlighting in code blocks with [highlight.js](https://highlightjs.org/)
- Custom preview container, which allows you to create a full screen side by side editor - for an example see the [online demo app](https://apex.oracle.com/pls/apex/f?p=66154:3)
- Event to hook in own code after preview refresh (`Preview Refreshed [Markdown]`, see also changelog 1.3.0 )
- You can configure a pre and post conversion function (see also changelog 1.3.0)
- Prints runtime statistics to the browser console when page is in debug mode


## Whats Next?

This will be the last version for APEX 4.2.x. I started already to find replacements for the editor and also the converter, because I found out that under some circumstances the converter fails to render correct results. As an example, if you try to show a code block with XML inside, the converter will produce wrong output. The new version will depend on Font Awesome and Require.js and therefore only available for APEX 5.1.0 or higher. And hey, its time now to upgrade to APEX 5.1.1...


## How To Use

1. Install the plugin
2. On your page create a dynamic action on `page load` with the action `Markdown [Plug-in]`
3. Add the CSS class `markdown` to your text areas and other content, which should be converted
4. Optionally create per dynamic content (reports and other refreshable region types) an additional dynamic action on framework event `After Refresh` with selection type `Region`


## Links

- [License: MIT](https://github.com/ogobrecht/markdown-apex-plugin/blob/master/LICENSE.txt)
- [Download](https://github.com/ogobrecht/markdown-apex-plugin/releases/latest)
- [Issues](https://github.com/ogobrecht/markdown-apex-plugin/issues)
- [Demo App](https://apex.oracle.com/pls/apex/f?p=66154)


## Credits

I would like to say THANK YOU to all the people who share their knowledge. Without this sharing I would not have been able to create this Markdown plugin. Special thanks to John Gruber for his first Markdown implementation in Perl, to John Fraser for his JavaScript port and to Dana Robinson and the people of Stack Exchange Inc. for the modifications and bugfixes. See also the LICENSE.txt for more information.

## How The Plugin Works

- The plugin uses the triggering element of a dynamic action as a starting point to find elements with the class `markdown`
    - Text areas are converted into Markdown editors
    - The content of all other non form elements is rendered into HTML
- A normal page setup consists of one dynamic action on `Page Load` with the action `Markdown [Plug-in]`
    - The triggering element is the whole document
    - The plugin will find all elements in the document with a class `markdown`
    - Form elements except text areas are filtered out
        - You can write into HTML regions directly by wrapping your text into a span element `<span class="markdown">Your text</span>`
        - You can use display only items; they are rendered by the APEX engine as span elements - don't forget the class markdown
- Optionally you have an additional dynamic action per report on framework event `After Refresh` with selection type `Region`
    - The triggering element is your report region
    - The plugin will find all elements in your report with a class `markdown`
    - Please keep in mind that you can easily set the class in your report column
        - Interactive report: `Column Formatting` > `HTML Expression`
        - Classic report: `Column Formatting` > `CSS Class` or `HTML Expression`
    - If you have only one report on a page, then it is ok to register only one dynamic action on report refresh and check the `Fire On Page Load` execution option


## Options

The plugin options (most options are on application level) can be configured under Shared Components > User Interface > Component Settings > Markdown[Plugin].

You will find there the following options:


### Custom Styles

You can add here custom styles for the rendered HTML.

Example: `.markdown h1 { text-transform: uppercase; }`


### Custom Image Function

The Plugin will replace `#images#` with your configured custom image function.


### Enable Sanitizing Converter

With this option two plugins are registered for the converter. One of them sanitizes the output HTML to only include a list of whitelisted HTML tags. The other one attempts to balance opening/closing tags to prevent leaking formating if the HTML is displayed in the browser.



#### Try To Use Original Value From Display Only Items

This option depends on the option _Enable Sanitizing Converter_.

The APEX engine does escape special characters in most cases. Sometimes you can disable this like in reports. For read only items you can't disable this and depending on your security settings of your application at a minimum the basic escaping is done.

If you have code blocks in your Markdown text with HTML inside, this could be very annoying, because all the < and > characters are escaped to HTML entities. In fact, your HTML code in code blocks looks very bad, when the item is rendered read only. The preview from the editor is ok, because it is a live preview in your browser without interaction of the APEX engine.

When you enable this plugin option, then the Markdown plugin try to use the original text from the hidden item to render your HTML. From the security side this should be ok, because you can enable this option only when you have also the sanitizer enabled, which does whitelisting of HTML tags and suppresses script tags. You can try this out by injecting javascript code - the converter will sort out the script tags and your code will appear as normal inline text.


### Enable Syntax Highlighting In Code Blocks

The used syntax highlighter is [highlight.js](https://highlightjs.org/) with the default set of 22 common languages: Apache, Bash, C#, C++, CSS, CoffeeScript, Diff, HTML-XML, HTTP, Ini, JSON, Java, JavaScript, Makefile, Markdown, Nginx, Objective-C, PHP, Perl, Python, Ruby, SQL.

If you need more or other languages (172 available) then you can create your custom highlight.js package, rename it to the same file name used in the plugin and upload it to the plugin files.


### Enable Markdown Extra Syntax

Markdown Extra is one of the extensions available for Markdown. It was originally implemented in PHP. For more details see [here](https://en.wikipedia.org/wiki/Markdown_Extra) and [here](https://en.wikipedia.org/wiki/Markdown#Extensions). These Markdown Extra syntax enhancements are also available for the JavaScript based implementation used in this Oracle APEX plugin:

- Tables
- Fenced Code Blocks à la GitHub
- Definiton Lists
- Footnotes
- Special Attributes
- SmartyPants
- Newlines  à la GitHub
- Strikethrough à la GitHub

See the next sections for details.


#### Tables

http://michelf.ca/projects/php-markdown/extra/#table

The following markdown...

```markdown
| Item      | Value | Qty |
|-----------|------:|:---:|
| Computer  | $1600 |  5  |  
| Phone     |   $12 |  12 |
| *Pipe*    |    $1 | 234 |
```

...will render to this:

| Item      | Value | Qty |
|-----------|------:|:---:|
| Computer  | $1600 |  5  |  
| Phone     |   $12 |  12 |
| *Pipe*    |    $1 | 234 |

Span-level markdown inside of table cells will also be converted.


#### Fenced Code Blocks

http://github.github.com/github-flavored-markdown/

Fenced code blocks are supported à la GitHub. This markdown...

    ```
    var x = 2;
    ```

...will be transformed into:

```html
<pre>
    <code>var x = 2;</code>
</pre>
```

If syntax highlighting is enabled, then you can specify the language like so...

    ```javascript
    var x = 2;
    ```

...which would be converted to:

```html
<pre>
    <code class="language-javascript hljs">var x = 2;</code>
</pre>
```

If you omit the language, the highlighter tries its best to find out the language. The used highlighter is [highlight.js](https://highlightjs.org/) with the default set of 22 common languages: Apache, Bash, C#, C++, CSS, CoffeeScript, Diff, HTML-XML, HTTP, Ini, JSON, Java, JavaScript, Makefile, Markdown, Nginx, Objective-C, PHP, Perl, Python, Ruby, SQL.

If you need more or other languages (172 available) then you can create your [highlight.js package](https://highlightjs.org/download/custom), rename it to the same file name used in the plugin and upload it to the plugin files.


#### Definition Lists

http://michelf.ca/projects/php-markdown/extra/#def-list

```markdown
Term 1
:   Definition 1

Term 2
:   This definition has a code block.

        code block
```

becomes:

```html
<dl>
  <dt>Term 1</dt>
  <dd>
    Definition 1
  </dd>
  <dt>Term 2</dt>
  <dd>
    This definition has a code block.
    <pre><code>code block</code></pre>
  </dd>
</dl>
```

Definitions can contain both inline and block-level markdown.


#### Footnotes

https://github.com/fletcher/MultiMarkdown/blob/master/Documentation/MultiMarkdown%20User%27s%20Guide.md#footnotes

```markdown
Here is a footnote[^footnote].

[^footnote]: Here is the *text* of the **footnote**.
```

becomes:

```html
<p>Here is a footnote<a href="#fn:footnote" id="fnref:footnote" title="See footnote" class="footnote">1</a>.</p>

<div class="footnotes">
<hr>
<ol>
<li id="fn:footnote">Here is the <em>text</em> of the <strong>footnote</strong>. <a href="#fnref:footnote" title="Return to article" class="reversefootnote">↩</a></li>
</ol>
</div>
```

You need a blank line after each footnote text, like with paragraphs.


#### Special Attributes

http://michelf.ca/projects/php-markdown/extra/#spe-attr

You can add class and id attributes to headers and gfm fenced code blocks.


    ``` {#gfm-id .gfm-class}
    var foo = bar;
    ```

    ## A Header {#header-id}

    ### Another One ### {#header-id .hclass}

    Underlined  {#what}
    ==========



#### SmartyPants

http://daringfireball.net/projects/smartypants/

SmartyPants extension converts ASCII punctuation characters into "smart" typographic punctuation HTML entities. For example:

Single backticks
:   `'Isn't this fun?'` → &#8216;Isn&#8217;t this fun?&#8217;

Quotes
:   `"Isn't this fun?"` → &#8220;Isn&#8217;t this fun?&#8221;

Dashes
:   `This -- is an en-dash and this --- is an em-dash` → This &#8211; is an en-dash and this &#8212; is an em-dash


#### Newlines

https://help.github.com/articles/github-flavored-markdown#newlines

Newlines à la GitHub (without the need of two white spaces):

```markdown
Roses are red
Violets are blue
```

becomes:

```html
<p>Roses are red<br/>
Violets are blue</p>
```


#### Strikethrough

https://help.github.com/articles/github-flavored-markdown#strikethrough

Strikethrough à la GitHub:

```md
~~Mistaken text.~~
```

becomes:

```html
<p><del>Mistaken text.</del></p>
```


## Custom Preview Container

If you want to have a custom preview container instead of the one generated under your text area simply create anywhere on your page a display only item with the name of the text area (editor) and append `_PREVIEW` to the name.

For an example: If the name of your text area is `P3_SAMPLE_MARKDOWN_EDITOR` then you name your display only item `P3_SAMPLE_MARKDOWN_EDITOR_PREVIEW`. The plugin will find this item and use it automatically.

You can also create a container element in the region source of an HTML region with the id attribute set to the mentioned name. (e.g. `<div id="P3_SAMPLE_MARKDOWN_EDITOR_PREVIEW"></div>`) or you set the static ID of the region itself to this name.

In both cases you have to manage the conditional rendering of your preview container by yourself. If the text area (Markdown editor) can be displayed in read only mode, then the text area IS your (pre)view, because the Markdown plugin simply renders all items except text areas and inputs and you have to hide ore not to render your custom preview container - its useless without an editor...

There is a small helper function shipped with plugin to maximize page items. It depends on your theme, if this helper is working for your or not. If not, then simply modify the helper to your needs, as said - the helper function is really small - here an example call in a dynamic action - you can see this helper live in action in the [online demo app](https://apex.oracle.com/pls/apex/f?p=66154:3):

```javascript
markdown.maximizeItem('editor', '#P3_SAMPLE_MARKDOWN_EDITOR', 4, 100);
markdown.maximizeItem('preview', '#P3_SAMPLE_MARKDOWN_EDITOR_PREVIEW',2 , 78);
```

The function itself:

```javascript
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
```


## Changelog

This Markdown plugin uses [semantic versioning](http://semver.org).

Please use for all comments and discussions the [issues functionality on GitHub](https://github.com/ogobrecht/markdown-apex-plugin/issues).

### 1.3.0 (2017-03-31)
- Move sprite image wmd-buttons.png as data URI to the css file (this helps to move plugin files to a  webserver without breaking the image - no relative paths possible under APEX 4.2)
- Add class `rendered` to rendered elements to avoid double conversion
- New dynamic action component event: `Preview Refreshed [Markdown]`
    - This can be used to trigger some additional action on your page
    - Attention: If you try to modify the rendered HTML in the preview directly after it was refreshed, then you will break the preview functionality; Please use for this cases the `Post Conversion Function` (see description below)
- New option `Pre Conversion Function`: If you configure here a JavaScript function, this function will get in the first paramater the raw Markdown text and must return the modified Markdown text, which will be send then to the converter
    - Example: `function (text) { return "# Converted text follows\n\n" + text; /*add a level 1 header*/ }`
- New option `Post Conversion Function`: If you configure here a JavaScript function, this function will get in the first paramater the rendered HTML text and must return the modified HTML text, which will be send then to the preview container
    - Example: `function (text) { return text + "<br>\n**This is not bold, because it was added after the conversion**"; }`
- Update to highlight.js 9.9.0 with the default set of 22 common languages: Apache, Bash, C#, C++, CSS, CoffeeScript, Diff, HTML-XML, HTTP, Ini, JSON, Java, JavaScript, Makefile, Markdown, Nginx, Objective-C, PHP, Perl, Python, Ruby, SQL - if you need more or other languages (172 available) then you can create your own custom highlight.js package under [highlightjs.org/download](https://highlightjs.org/download/)
- Internal name change of created editors; You can now easily force the preview refresh after procedural changes of your text area content - simply call this JavaScript code: `markdown.editors.normalizedIdOfYourItemOrTextArea.refreshPreview()` (all characters anything else then `a-z`, `A-Z`, `0-9` and `_` are converted to `_`)
- Restructure source code repository to use Grunt as build tool

### 1.2.0 (not officially released):
- Base support for YAML header - this comes from the demo app of my [Markdown Reporter project](https://github.com/ogobrecht/markdown-reporter) and parses out the attributes title, author and date from a YAML header

### 1.1.1 (2016-02-15)
- Fixed: Helper function to maximize editor item not working in IE

### 1.1.0 (2016-02-14)
- Support for the following Markdown Extra extensions: tables, fenced code blocks, definition lists, footnotes, special attributes, SmartyPants, newlines and strikethrough à la GitHub
- Support for the well known image substitution strings (also in lowercase) in the live preview: &#35;image_prefix&#35;, &#35;app_images&#35;, &#35;workspace_images&#35; and additionally &#35;images&#35;, which is configurable with a own image function
- Syntax highlighting in code blocks with [highlight.js](https://highlightjs.org/) and the default set of 23 common languages: Apache, Bash, C#, C++, CSS, CoffeeScript, Device Tree (\*.dts), Diff, HTML-XML, HTTP, Ini, JSON, Java, JavaScript, Makefile, Markdown, Nginx, Objective-C, PHP, Perl, Python, Ruby, SQL - if you need more or other languages (146 available) then you can create your own custom highlight.js package
- Custom preview container, which allows you to create a full screen side by side editor - for an example see the [online demo app](https://apex.oracle.com/pls/apex/f?p=66154:3)
- Improved styling of code blocks and lists, inspired by [DokuWiki](https://www.dokuwiki.org)
- Improved security with a optional sanitizing converter (per default switched on), which only allows whitelisted HTML tags
- All new options are configurable under Shared Components > User Interface > Component Settings > Markdown[Plugin]


### 1.0.0 (2016-01-01)

- First public release
