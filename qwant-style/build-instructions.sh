git clone https://github.com/Qwant/qwant-basic-gl-style.git  # was commit 29dc39aa804fe0fc3746d79e11af0a8ad8fc4239
git clone https://github.com/Qwant/map-style-builder.git # was commit 81eebb00fbc41d6dedaf02ffe4c5672bd75dd756
cd map-style-builder/
npm run build_all -- --style-dir=../qwant-basic-gl-style/ --conf=prod_conf.json --i18n=en --webfont=true --icons=true
cd ../qwant-basic-gl-style/
mkdir ~/qwant-style
cp build/built-style.json ~/qwant-style/built-style-en.json
cp build/sprite* ~/qwant-style/
