# Markdown For APEX

_This plugin uses the Stack Overflow JavaScript Markdown implementation to convert Markdown formatted text into HTML._

- Works with APEX versions 4.2.x and 5.x
- Turns a standard APEX text area into a Markdown editor only by setting the form element class to `markdown`
    - Live preview - try it out in the sample editor
    - Supports the readonly mode of the textarea - this plugin description is a textarea in read only mode ;-)
- Converts the content of all other DOM elements with the class `markdown` into HTML  
- Can be used on dynamic contents like reports
- Support for the following Markdown Extra extensions: tables, fenced code blocks, definition lists, footnotes, special attributes, SmartyPants, newlines and strikethrough à la GitHub
- Support for the well known image substitution strings (also in lowercase) in the live preview: &#35;image_prefix&#35;, &#35;app_images&#35;, &#35;workspace_images&#35; and additionally &#35;images&#35;, which is configurable with a own image function
- Syntax highlighting in code blocks with [highlight.js](https://highlightjs.org/)
- Custom preview container, which allows you to create a full screen side by side editor - for an example see the page "Custom Preview, Markdown Extra"
- Event to hook in own code after preview refresh (`Preview Refreshed [Markdown]`, see also the [changelog for v1.3.0](https://github.com/ogobrecht/markdown-apex-plugin#130-2017-03-31))
- You can configure a pre and post conversion function (see also the [changelog for v1.3.0](https://github.com/ogobrecht/markdown-apex-plugin#130-2017-03-31))
- Prints runtime statistics to the browser console when page is in debug mode


## Whats Next?

This will be the last version for APEX 4.2.x. I started already to find replacements for the editor and also the converter, because I found out that under some circumstances the converter fails to render correct results. As an example if you try to show a code block with XML inside the converter will produce wrong output. The new version will depend on Font Awesome and Require.js and therefore only available for APEX 5.1.0 or higher. And hey, its time now to upgrade to APEX 5.1.1...


## How To Use

1. Install and configure the plugin
2. On your page create a dynamic action on `page load` with the action `Markdown [Plug-in]`
3. Add the CSS class `markdown` to your text areas and other content which should be converted
4. Optionally create an additional dynamic action per dynamic content (reports and other refreshable region types) on framework event `After Refresh` with selection type `Region`
5. For more information see the [GitHub repository](https://github.com/ogobrecht/markdown-apex-plugin)


## Links

* [GitHub](https://github.com/ogobrecht/markdown-apex-plugin)
* [License: MIT](https://github.com/ogobrecht/markdown-apex-plugin/blob/master/LICENSE.txt)
* [Download](https://github.com/ogobrecht/markdown-apex-plugin/releases/latest)
* [Issues](https://github.com/ogobrecht/markdown-apex-plugin/issues)

The Download of this demo application is available [here](https://github.com/ogobrecht/markdown-apex-plugin/releases/download/v1.3.0/demo-app.zip).

Happy writing!

Ottmar
