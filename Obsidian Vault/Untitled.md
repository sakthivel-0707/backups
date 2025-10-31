## Block Elements

Block-level elements are used to create the structural layout of a web page.

* **Starts on a New Line:** A block element always starts on a new line, effectively creating a line break before and after the element.
* **Takes Full Width:** By default, it takes up the full width available in its parent container, stretching from left to right.
* **Dimensions & Margins:** You can set the `width`, `height`, and `margin` (including top and bottom margins) on block elements using CSS.
* **Common Examples:**
    * `<div>` (generic container)
    * `<p>` (paragraph)
    * `<h1>` to `<h6>` (headings)
    * `<ul>`, `<ol>`, `<li>` (lists and list items)
    * `<header>`, `<footer>`, `<section>`, `<article>` (semantic structure elements)

***

## Inline Elements

Inline elements are used to style or apply actions to content *within* a block element, without disrupting the flow of the text.

* **Does Not Start on a New Line:** It does not force a line break; it sits directly in line with adjacent content.
* **Takes Required Width:** It only takes up as much width as is necessary to contain its content.
* **Dimensions & Margins:** You **cannot** set the `width` or `height` of an inline element using CSS. It also only respects horizontal `margin` and `padding` (left and right), ignoring vertical `margin` (top and bottom).
* **Common Examples:**
    * `<span>` (generic container for text)
    * `<a>` (anchor/hyperlink)
    * `<strong>` (strong emphasis/bold)
    * `<em>` (emphasized text/italic)
    * `<img>` (image)
    * `<input>` (form input)

***

## Key Differences

| Feature       | Block Element                                   | Inline Element                                     |
| :------------ | :---------------------------------------------- | :------------------------------------------------- |
| **Placement** | Always starts on a new line, stacks vertically. | Stays in the same line, flows with the content.    |
| **Width**     | Takes up the full available width by default.   | Only takes up the width necessary for its content. |

