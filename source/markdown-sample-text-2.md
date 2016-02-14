:P3_SAMPLE_MARKDOWN_EDITOR := q'{
# Custom Preview Container

If you want to have a custom preview container instead of the one generated under your text area simply create anywhere on your page a display only item with the name of the text area (editor) and append `_PREVIEW` to the name.

For an example: The name of the text area on the left side is `P3_SAMPLE_MARKDOWN_EDITOR` and the name of the display only item on the right is `P3_SAMPLE_MARKDOWN_EDITOR_PREVIEW`.

You can also create a container element in the region source of an HTML region with the id attribute set to the mentioned name. (e.g. `<div id="P3_SAMPLE_MARKDOWN_EDITOR_PREVIEW"></div>`) or you set the static ID of the region itself to this name.

In both cases you have to manage the conditional rendering of your preview container by yourself. If the text area (Markdown editor) can be displayed in read only mode, then the text area IS your (pre)view, because the Markdown plugin simply renders all items except text areas and inputs and you have to hide ore not to render your custom preview container - its useless without an editor...

...on this page the whole right region is conditional and not displayed when the hidden item P3_PAGE_MODE_RW has the value `W` in session state...

...and additionally there is a small helper function in use which maximizes the editor and preview window - it is registered as the second true action (of type execute JavaScript) after the markdown dynamic action:

```javascript
markdown.maximizeItem('editor', '#P3_SAMPLE_MARKDOWN_EDITOR', 4, 100);
markdown.maximizeItem('preview', '#P3_SAMPLE_MARKDOWN_EDITOR_PREVIEW',2 , 78);
```

The function itself, may be someone find it useful for own applications - if it does not play nice with your theme, then modify it ;-)

```javascript
markdown.maximizeItem = function (itemType, selector, regionIsNthParent, offsetBottom, debug) {
    $(selector).each( function() {
        var item = $(this);
        // jQuery eq function start count with 0, we want start count with 1
        var region = item.parents().eq(regionIsNthParent -1);
        var maximizeEditor = function() {
            item.width( region.width() - 2 * parseInt( region.css('padding') ))
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

# Markdown Extra Enhancements

Markdown Extra is one of the extensions available for Markdown. It was originally implemented in PHP. For more details see [here][0] and [here][1]. Some of the Markdown Extra syntax enhancements are also available for the JavaScript based implementation used in this Oracle APEX plugin. You have to enable these enhancements on application level under Shared Components > User Interface > Component Settings > Markdown[Plugin]. You can enable or disable each of the following additional features.


## [Tables][2]

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
| Phone     | $12   |  12 |
| *Pipe*    | $1    | 234 |

Span-level markdown inside of table cells will also be converted.


## [Fenced Code Blocks][3]
   
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

If you omit the language, the highlighter tries its best to find out the language. The used highlighter is [highlight.js][4] with the default set of 23 common languages: Apache, Bash, C#, C++, CSS, CoffeeScript, Device Tree (*.dts), Diff, HTML-XML, HTTP, Ini, JSON, Java, JavaScript, Makefile, Markdown, Nginx, Objective-C, PHP, Perl, Python, Ruby, SQL.

If you need more or other languages (146 available) then you can create your [custom highlight.js package][5], rename it to the same file name used in the plugin and upload it to the plugin files.


## [Definition Lists][6]

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


## [Footnotes][7]

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


## [Special Attributes][8]

You can add class and id attributes to headers and gfm fenced code blocks.


    ``` {#gfm-id .gfm-class}
    var foo = bar;
    ```

    ## A Header {#header-id}

    ### Another One ### {#header-id .hclass}

    Underlined  {#what}
    ==========


## [SmartyPants][9]

SmartyPants extension converts ASCII punctuation characters into "smart" typographic punctuation HTML entities. For example:

Single backticks
:   `'Isn't this fun?'` → &#8216;Isn&#8217;t this fun?&#8217;

Quotes
:   `"Isn't this fun?"` → &#8220;Isn&#8217;t this fun?&#8221;

Dashes
:   `This -- is an en-dash and this --- is an em-dash` → This &#8211; is an en-dash and this &#8212; is an em-dash


## [Newlines][10]

Newlines &agrave; la GitHub (without the need of two white spaces):

```md
Roses are red
Violets are blue
```

becomes:

```html
<p>Roses are red<br/>
Violets are blue</p>
```


## [Strikethrough][11]

Strikethrough &agrave; la GitHub:

```md
~~Mistaken text.~~
```

becomes:

```html
<p><del>Mistaken text.</del></p>
```

 [0]: https://en.wikipedia.org/wiki/Markdown_Extra
 [1]: https://en.wikipedia.org/wiki/Markdown#Extensions
 [2]: http://michelf.ca/projects/php-markdown/extra/#table
 [3]: http://github.github.com/github-flavored-markdown/
 [4]: https://highlightjs.org/
 [5]: https://highlightjs.org/download/
 [6]: http://michelf.ca/projects/php-markdown/extra/#def-list
 [7]: https://github.com/fletcher/MultiMarkdown/blob/master/Documentation/MultiMarkdown%20User%27s%20Guide.md#footnotes
 [8]: http://michelf.ca/projects/php-markdown/extra/#spe-attr
 [9]: http://daringfireball.net/projects/smartypants/
[10]: https://help.github.com/articles/github-flavored-markdown#newlines
[11]: https://help.github.com/articles/github-flavored-markdown#strikethrough
}';