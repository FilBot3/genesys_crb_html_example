# Genesys CRB CSS Formatting Example

This is an example of how to format your content in Markdown to HTML using CSS.

## Requirements

* [Genesys Foundry Graphic Design Templates](https://www.drivethrurpg.com/product/284422/Genesys-Foundry-Graphic-Design-Templates)
  * You'll want the fonts.

You maybe even want to get the

* [Genesys Foundry Style
  Guide](https://www.drivethrurpg.com/product/286600/Genesys-Foundry-Style-Guide)
* [Additional Genesys Foundry Graphic
  Assets](https://www.drivethrurpg.com/product/295861/Additional-Genesys-Foundry-Graphic-Assets)

You'll also need to have `pandoc` available in your `PATH`.

* [Pandoc](https://pandoc.org)

Then to convert HTML to PDF, use `wkhtmltopdf`.

* [wkhtmltopdf](https://wkhtmltopdf.org)

To use the `Makefile`, you'll need GNU Make. Otherwise it just shows the
commands needed to do this.

## Usage

Execute the following make command.

```bash
make html
```
