# CV

These are the source files for my resume. It is based on the [Awesome CV Class File](https://github.com/posquit0/Awesome-CV) by [@posquit0](https://github.com/posquit0) with some slight modifications to better suit my needs.

![Build tagged CV](https://github.com/istvnurbn/cv/actions/workflows/release_build.yml/badge.svg)
![Build CV for istvnurbn.me](https://github.com/istvnurbn/cv/actions/workflows/web_build.yml/badge.svg)

## Notable Changes

Compared with the original Awesome CV, this version is tuned for my own resume. In short:

### What you can do

- **Write a short intro for each job.** Every entry can have a one-line summary under the title, with or without bullet points below it.
- **Make simple bullet lists** for things like skills or hobbies, without the full entry layout.
- **List projects** with a title, a date and a short description.
- **Pick the photo size** instead of living with the default.
- **Show your contacts in your own order.** The links in the header appear exactly in the order you write them (thanks @rhagenson).
- **Link more profiles:** X, WhatsApp and Telegram, next to the usual LinkedIn, GitHub, email and the rest. Google Scholar shows your name when you don't give it a label.

### Easier to read for people and machines

- Header icons carry real text behind them. Copying your contact line, a screen reader, or an applicant tracking system gets "LinkedIn: /in/yourname" instead of a strange symbol.
- The phone number shows a phone icon, not a mobile one.

### Looks

- Thinner section lines and the same font size across all entries, for a calmer page.
- Job titles stand out more than company names.
- More highlight colors to choose from: extra blues, purples, greens and oranges.

### Fewer surprises

- Leaving out a contact detail no longer breaks the build.
- An entry works with any mix of details filled in or left empty.
- An entry is never split across two pages.
- No more layout warnings when building.
- A broken build stops with an error, both locally and on GitHub, instead of quietly producing an old or missing PDF.

## Compiling

### GitHub

There are two actions set up in this repository to compile PDF files:

- The `release_build.yml` action compiles the PDF files. Run it on demand with the *Run workflow* button under `Actions` **>>** `Workflows` **>>** `Build CV`; the resulting PDFs will be available zipped in the `Artifacts` section of the successful run's summary. If you tag your changes (`git tag -a v*-*-* -m "Your comment here."`) it runs automatically and also does a release.

- Similarly, the `web_build.yml` will build the tagged changes and push them to the relevant folder in my website's repository.

### Local

A minimal `Makefile` is included in this repo, so all you have to do is run the `make` command in your terminal. If you do not want to install the full Tex Live distribution, install Docker and run the following command:

```
docker run --rm --user $(id -u):$(id -g) -i -w "/doc" -v "$PWD":/doc thomasweise/docker-texlive-full make
```

:bulb: *For macOS users [Colima](https://github.com/abiosoft/colima) is recommended.*

If you are a member of the Church of Nix, a simple `nix-shell --command make` will suffice. If you have flakes enabled, `nix develop --command make` works the same way.

## Licensing

The Awesome CV Class File (`awesome-cv.cls`) is licensed under the [LaTeX Project Public License v1.3c](http://www.latex-project.org/lppl) license.

The original `.tex` files and those I have created or modified are licensed under the [Attribution-ShareAlike 4.0 International](https://creativecommons.org/licenses/by-sa/4.0/) license.

Feel free to take my `.tex` files and modify them to create your own resume. But please don't use them for anything else without my permission!

**You are not allowed to use my picture (`profile.jpg`) for any purpose!**
