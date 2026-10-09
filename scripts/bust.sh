#!/bin/bash
# Re-stamp ?v=<sha256[:8]> on asset refs after editing. Usage: bust.sh /workspace/cocofhu-home
set -e; cd "${1:-/workspace/cocofhu-home}"
h(){ sha256sum "$1" | cut -c1-8; }
F=$(h assets/fredoka.woff2); sed -i -E "s#url\(\"fredoka\.woff2(\?v=[0-9a-f]+)?\"\)#url(\"fredoka.woff2?v=$F\")#" assets/style.css
C=$(h assets/style.css); J=$(h assets/main.js); I=$(h assets/favicon.svg)
sed -i -E "s#assets/style\.css(\?v=[0-9a-f]+)?\"#assets/style.css?v=$C\"#; s#assets/main\.js(\?v=[0-9a-f]+)?\"#assets/main.js?v=$J\"#; s#assets/fredoka\.woff2(\?v=[0-9a-f]+)?\"#assets/fredoka.woff2?v=$F\"#; s#assets/favicon\.svg(\?v=[0-9a-f]+)?\"#assets/favicon.svg?v=$I\"#" index.html
grep -o 'assets/[a-z.0-9]*?v=[0-9a-f]*' index.html
