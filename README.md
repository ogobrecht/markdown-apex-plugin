Please do not download directly this code - this is the development version and can be unstable. You can find the [latest
stable version here] (https://github.com/ogobrecht/markdown-apex-plugin/releases/latest).


# Oracle APEX Dynamic Action Type Plugin: Markdown

_This Oracle APEX plugin uses the Stack Overflow JavaScript Markdown implementation to convert
Markdown formatted text into HTML._

* Works with APEX versions 4.2.x and 5.x
* Turns a standard APEX text area into a Markdown editor only by setting the form element class to `markdown`
    * Live preview of the rendered text
    * Supports the readonly mode of the textarea
* Converts the content of all other non HTML form elements with a class `markdown` to HTML
* Can be used on dynamic content like reports
* Prints runtime statistics to the browser console when page is in debug mode
* NEW in version 1.1.0:
    * Support for the following Markdown Extra extensions: tables, fenced code blocks, definition lists, footnotes, special attributes, SmartyPants, newlines and strikethrough à la GitHub
    * Support for the well known image substitution strings (also in lowercase) in the live preview: &#35;image_prefix&#35;, &#35;app_images&#35;, &#35;workspace_images&#35; and additionally &#35;images&#35;, which is configurable with a own image function
    * Syntax highlighting in code blocks with [highlight.js][8] and the default set of 23 common languages: Apache, Bash, C#, C++, CSS, CoffeeScript, Device Tree (*.dts), Diff, HTML-XML, HTTP, Ini, JSON, Java, JavaScript, Makefile, Markdown, Nginx, Objective-C, PHP, Perl, Python, Ruby, SQL - if you need more or other languages (146 available) then you can create your own custom highlight.js package
    * Custom preview container, which allows you to create a full screen side by side editor - for an example see the [online demo app][9]
    * Improved styling of code blocks and lists, inspired by [DokuWiki][10]
    * Improved security with a optional sanitizing converter (per default switched on), which only allows whitelisted HTML tags
    * All new options are configurable under Shared Components > User Interface > Component Settings > Markdown[Plugin]

## How To Use

1. Install the plugin
2. On your page create a dynamic action on `page load` with the action `Markdown [Plug-in]`
3. Add the CSS class `markdown` to your text areas and other content, which should be converted
4. Optionally create per dynamic content (reports and other refreshable region types) an additional
   dynamic action on framework event `After Refresh` with selection type `Region`
5. For more informations and how it works internally see the [project page][1]


## Links

* [Project page][1]
* [Sourcecode][2]
* [License: MIT][3]
* [Download][4]
* [Issues][5]
* [Demo App][6]


## Credits

I would like to say THANK YOU to all the people who share their knowledge. Without this sharing I would not have been
able to create this Markdown plugin. Special thanks to John Gruber for his first Markdown implementation in Perl, 
to John Fraser for his JavaScript port and to Dana Robinson and the people of Stack Exchange Inc. for the modifications
and bugfixes. See also the LICENSE.txt for more information.


## Changelog

This Markdown plugin uses [semantic versioning][7].

Please use for all comments and discussions the 
[issues functionality on GitHub][5].


### 1.1.0 (2016-02-14)

* Support for the following Markdown Extra extensions: tables, fenced code blocks, definition lists, footnotes, special attributes, SmartyPants, newlines and strikethrough à la GitHub
* Support for the well known image substitution strings (also in lowercase) in the live preview: &#35;image_prefix&#35;, &#35;app_images&#35;, &#35;workspace_images&#35; and additionally &#35;images&#35;, which is configurable with a own image function
* Syntax highlighting in code blocks with [highlight.js][8] and the default set of 23 common languages: Apache, Bash, C#, C++, CSS, CoffeeScript, Device Tree (*.dts), Diff, HTML-XML, HTTP, Ini, JSON, Java, JavaScript, Makefile, Markdown, Nginx, Objective-C, PHP, Perl, Python, Ruby, SQL - if you need more or other languages (146 available) then you can create your own custom highlight.js package
* Custom preview container, which allows you to create a full screen side by side editor - for an example see the [online demo app][9]
* Improved styling of code blocks and lists, inspired by [DokuWiki][10]
* Improved security with a optional sanitizing converter (per default switched on), which only allows whitelisted HTML tags
* All new options are configurable under Shared Components > User Interface > Component Settings > Markdown[Plugin]


### 1.0.0 (2016-01-01)

* First public release


 [1]: https://gobrechts.net/wiki/projects/markdown-apex-plugin
 [2]: https://github.com/ogobrecht/markdown-apex-plugin
 [3]: https://github.com/ogobrecht/markdown-apex-plugin/blob/master/LICENSE.txt
 [4]: https://github.com/ogobrecht/markdown-apex-plugin/releases/latest
 [5]: https://github.com/ogobrecht/markdown-apex-plugin/issues
 [6]: https://apex.oracle.com/pls/apex/f?p=MARKDOWN
 [7]: http://semver.org
 [8]: https://highlightjs.org/
 [9]: https://apex.oracle.com/pls/apex/f?p=MARKDOWN:CUSTOM_PREVIEW
[10]: https://www.dokuwiki.org
