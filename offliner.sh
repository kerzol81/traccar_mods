#!/bin/sh

extjsVersion='6.2.0'
olVersion='6.1.1'
proj4jsVersion='2.6.0'

mkdir -p offline

cd offline || exit 1

# /opt/traccar/web/load.js
wget https://cdn.traccar.com/js/extjs/$extjsVersion/ext-all.js
wget https://cdn.traccar.com/js/extjs/$extjsVersion/ext-all-debug.js
wget https://cdn.traccar.com/js/extjs/$extjsVersion/packages/charts/classic/charts-debug.js
wget https://cdn.traccar.com/js/proj4js/$proj4jsVersion/proj4.js
wget https://cdn.traccar.com/js/proj4js/$proj4jsVersion/proj4-src.js
wget https://cdn.traccar.com/js/extjs/$extjsVersion/packages/charts/classic/charts.js
wget https://cdn.traccar.com/js/extjs/$extjsVersion/packages/charts/classic/triton/resources/charts-all.css

# language
wget https://cdn.traccar.com/js/extjs/$extjsVersion/classic/locale/locale-en.js

wget https://cdn.traccar.com/js/extjs/$extjsVersion/classic/theme-triton/theme-triton.js
wget https://cdn.traccar.com/js/extjs/$extjsVersion/classic/theme-triton/resources/theme-triton-all.css
wget https://cdn.traccar.com/js/ol/$olVersion/ol.js
wget https://cdn.traccar.com/js/ol/$olVersion/ol.css

# /opt/traccar/web/simple/index.html
#wget https://cdnjs.cloudflare.com/ajax/libs/ol3/3.20.1/ol.js
#wget https://cdnjs.cloudflare.com/ajax/libs/ol3/3.20.1/ol.css

wget https://cdn.traccar.com/js/extjs/$extjsVersion/classic/theme-triton/resources/images/loadmask/loading.gif

# fonts
wget https://cdn.traccar.com/js/extjs/$extjsVersion/classic/theme-triton/resources/fonts/OpenSans-Bold.ttf
wget https://cdn.traccar.com/js/extjs/$extjsVersion/classic/theme-triton/resources/fonts/OpenSans-Light.ttf
wget https://cdn.traccar.com/js/extjs/$extjsVersion/classic/theme-triton/resources/fonts/OpenSans-Regular.ttf
wget https://cdn.traccar.com/js/extjs/$extjsVersion/classic/theme-triton/resources/font-ext/fonts/ExtJS.ttf?-tqegh9

exit 0
