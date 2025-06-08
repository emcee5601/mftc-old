#!/bin/sh

# redirect the output of this script to file (overwrite it)
exec 1>dist/index.html

cat - <<EOF
<html>
<head>
<style>
    html{
        font-size: calc(min(5vw, 5vh));
    }
</style>
</head>
<body>
<h1>Previous versions of MFTC</h1>
<p>Only 1 version can be installed at a time. Be sure to uninstall previous versions to avoid unexpected behavior.</p>
<ul>
<li><a href="https://emcee5601.github.io/fit-test-console/">latest</a>
$(ls -1 dist/ | grep -e '^v' | sort -Vr | xargs -I{} echo '<li><a href="{}/">{}</a></li>')
</ul>
</body>
</html>
EOF


