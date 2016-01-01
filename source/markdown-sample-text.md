# Headers Are Starting With 1-6 Hash Characters `#`

## The Number Of Hash Characters

### Defining The Header Level 

Text wrapped into asterisks `*` or underscores `_`
is emphasized. One of these characters results in
*italic* `*italic*` font style, two in 
**bold** `**bold**` font style. Both styles can be
***combined*** `***combined***`.

New paragraphs  
begin with a blank line. You can make line breaks
by placing two or more spaces at the end of a line like
in this sentence after the words "New paragraphs".

* An unordered list begins with one of the following
  signs: `* - +`
* You can hard wrap the lines for better readability
like in the first list item, but you can also be lazy
like in this item...
    * Sublist entries start by adding four spaces
    * Another sublist entry
* Ordered lists begin with a number
    1. The number value is not interesting for the
       rendered result
    1. Can you see the point?

You can write `inline code` by wrapping the text
in back ticks (`` `code` ``)...

    ... or complete code blocks by adding four spaces
    in front of your text.

> Blockquotes start with `>`
>> Blockquotes can be nested by adding additional `>`

Links are wrapped in square brackets. There are two
types of links: inline and reference.

Inline example:  
`[example](http://example.com/ "Optional title")`

Reference example:  
`[Markdown basics][1]`  
You then put the link target anywhere in your text:  
`[1]: https://daringfireball.net/projects/markdown/basics`

The rendered result: [Markdown basics][1]

Images can be created in the same way like links - the only
difference is the exclamation mark at the beginning:  
`![Alt text](/path/to/img.jpg "Optional title")`

We now try to reference an image from your webserver - 
hopefully your image prefix is `/i/` ;-)

![SQL Workshop Icon][2]

[More on the philosophy of Markdown by John Gruber (markdown syntax description)][3]


[1]: https://daringfireball.net/projects/markdown/basics
[2]: /i/apex/builder/menu-sqlws-128.png "SQL Workshop Icon"
[3]: https://daringfireball.net/projects/markdown/syntax