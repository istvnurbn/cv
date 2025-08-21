# CV

These are the source files for my resume. It is based on the [Awesome CV Class File](https://github.com/posquit0/Awesome-CV) by [@posquit0](https://github.com/posquit0) with some slight modifications to better suit my needs.

![Build tagged CV](https://github.com/istvnurbn/cv/actions/workflows/release_build.yml/badge.svg)
![Build CV for istvnurbn.me](https://github.com/istvnurbn/cv/actions/workflows/web_build.yml/badge.svg)

## Notable Changes

### New

- The order of header socials matches their order in the source file (thanks @rhagenson)
- Added an option for tagline/summary part in the `\cventry`
- Added option to change the `\photosize`
- Added option to create a lists with `\cvsimplelist`
- Added option to list projects with `\cvproject`

### Fixes

- No more LaTeX compile error when social info is missing
- The `\cventry` handles all data combinations better
- Keep all lines of a `\cventry` on the same page
- No more `\hbox` warnings
- Wacky solutions to fix the `\hbox` warnings in `\makecvheader`
- Reworked the `Makefile` to work better with local and GitHub builds

### Looks

- Switch up `\entrypositionstyle` and `\entrytitlestyle`
- Thinner lines in section dividers
- Uniform font sizes
- Added extra colors from ColorCodes.io
- Change the mobile icon to a phone

### Misc.

- Added example for all supported social IDs
- Removed unnecessary empty lines

## Compiling

### GitHub

There are three actions set up in this repository to compile PDF files:

- The `manual_build.yml` will do this on demand by clicking the *Run workflow* button under `Actions` **>>** `Workflows` **>>** `Build CV on demand`. The resulting PDFs will be available zipped in the `Artifacts` section of the successful run's summary.

- If you tag your changes (`git tag -a v*-*-* -m "Your comment here."`) the `release_build.yml` action will automatically compile the PDF files and will do a release.

- Similarly, the `web_build.yml` will build the tagged changes and push them to the relevant folder in my website's repository.

### Local

A minimal `Makefile` is included in this repo, so all you have to do is run the `make` command in your terminal. If you do not want to install the full Tex Live distribution, install Docker and run the following command:

```
docker run --rm --user $(id -u):$(id -g) -i -w "/doc" -v "$PWD":/doc thomasweise/docker-texlive-full make
```

:bulb: *For macOS users [Colima](https://github.com/abiosoft/colima) is recommended.*

If you are a member of the Church of Nix, a simple `nix-shell --command make` will suffice.

## Licensing

The Awesome CV Class File (`awesome-cv.cls`) is licensed under the [LaTeX Project Public License v1.3c](http://www.latex-project.org/lppl) license.

The original `.tex` files and those I have created or modified are licensed under the [Attribution-ShareAlike 4.0 International](https://creativecommons.org/licenses/by-sa/4.0/) license.

Feel free to take my `.tex` files and modify them to create your own resume. But please don't use them for anything else without my permission!

**You are not allowed to use my picture (`profile.jpg`) for any purpose!**
