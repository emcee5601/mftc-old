#!/bin/sh

touch dist/index.html
# redirect the output of this script to file
exec 1>>dist/index.html

echo '<h1>Previous versions of MFTC</h1>'
echo '<p>Only 1 version can be installed at a time. Be sure to uninstall previous versions to avoid unexpected behavior.</p>'
echo '<ul>'
echo '<li><a href="https://emcee5601.github.io/fit-test-console/">latest</a>'
ls -1 dist/ | grep -e '^v' | sort -Vr | xargs -I{} echo '<li><a href="{}/">{}</a></li>'
echo '</ul>'


