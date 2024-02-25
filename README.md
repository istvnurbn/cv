# CV

These are the source files for my resume. It is based on the [Awesome CV Class File](https://github.com/posquit0/Awesome-CV) by [@posquit0](https://github.com/posquit0) with some slight modifications to better suit my needs.

## Compiling

### GitHub

There are two actions set up in this repo to compile PDF files:

- The `manual_build.yml` will do this on demand by clicking the *Run workflow* button under `Actions` **>>** `Workflows` **>>** `Build CV on demand`. The resulting PDFs will be available zipped in the `Artifacts` section of the successful run's summary.
- If you tag your changes (`git tag -a v*-*-* -m "Your comment here."`) the `release_build.yml` action will automatically compile the PDF files and will do a release.

### Local

A minimal `Makefile` is included in this repo, so all you have to do is run the `make` command in your terminal. If you do not want to install the full Tex Live distribution, install Docker and run the following command:

`docker run --rm --user $(id -u):$(id -g) -i -w "/doc" -v "$PWD":/doc thomasweise/docker-texlive-full make`

:bulb: For macOS users [Colima](https://github.com/abiosoft/colima) is recommended.

## Licensing

The Awesome CV Class File (`awesome-cv.cls`) is licensed under the [LaTeX Project Public License v1.3c](http://www.latex-project.org/lppl) license.

The original `.tex` files and those I have created or modified are licensed under the [Attribution-ShareAlike 4.0 International](https://creativecommons.org/licenses/by-sa/4.0/) license.

Feel free to take my `.tex` files and modify them to create your own resume. But please don't use them for anything else without my permission!

**You are not allowed to use my picture (`profile.jpg`) for any purpose!**