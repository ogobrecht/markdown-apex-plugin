Please do not download directly this code - this is the development version and can be unstable. You can find the [latest
stable version here] (https://github.com/ogobrecht/markdown-apex-plugin/releases/latest).


# Markdown APEX Plugin

_This Oracle APEX plugin uses the Stack Overflow JavaScript Markdown implementation to convert
Markdown formatted text into HTML._

- Works with APEX versions 4.2.x and 5.x
- Turns a standard APEX text area into a Markdown editor only by setting the form element class to `markdown`
  - Live preview of the rendered text
  - Supports the readonly mode of the textarea
- Converts the content of all other non HTML form elements with a class `markdown` to HTML
- Can be used on dynamic content like reports
- Prints runtime statistics to the browser console when page is in debug mode


## How To Use

1. Install the plugin
2. On your page create a dynamic action on `page load` with the action `Markdown [Plug-in]`
3. Add the CSS class `markdown` to your text areas and other content, which should be converted
4. Optionally create per dynamic content (reports and other refreshable region types) an additional
   dynamic action on framework event `After Refresh` with selection type `Region`
5. For more informations and how it works internally see the [project page]
   (https://gobrechts.net/wiki/projects/markdown-apex-plugin) 


## Links

- [Project page] (https://gobrechts.net/wiki/projects/markdown-apex-plugin)
- [Sourcecode] (https://github.com/ogobrecht/markdown-apex-plugin)
- [License: MIT] (https://github.com/ogobrecht/markdown-apex-plugin/blob/master/LICENSE.txt)
- [Download] (https://github.com/ogobrecht/markdown-apex-plugin/releases/latest)
- [Issues] (https://github.com/ogobrecht/markdown-apex-plugin/issues)
- [Demo App] (https://apex.oracle.com/pls/apex/f?p=MARKDOWN)


## Credits

I would like to say THANK YOU to all the people who share their knowledge. Without this sharing I would not have been
able to create this Markdown plugin. Special thanks to John Gruber for his first Markdown implementation in Perl, 
to John Fraser for his JavaScript port and to Dana Robinson and the people of Stack Exchange Inc. for the modifications
and bugfixes. See also the LICENSE.txt for more information.


## Changelog

This Markdown plugin uses [semantic versioning] (http://semver.org).

Please use for all comments and discussions the 
[issues functionality on GitHub] (https://github.com/ogobrecht/d3-force-apex-plugin/issues).


### 1.0.0 (2016-01-01)

- Initial release
