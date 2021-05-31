
# Add github repository

# Init Remote name
USERID=${1}
REMOTE=${2:-github}

# Check if empty userid
if [ -z "$USERID" ]; then
	echo "Empty User ID"
	exit 0
fi

# WebPack
cd webpack
git remote add $REMOTE https://github.com/$USERID/op-module-webpack.git
cd ..

# Core
cd asset/core
git remote add $REMOTE https://github.com/$USERID/op-core.git
cd ../..

# Asset
cd asset
for module in 'testcase' 'reference' 'develop'
do
	cd $module
	git remote add $REMOTE https://github.com/$USERID/op-module-$module.git
	cd ..
done
cd ..

# layout
cd asset/layout
for name in *; do
	# Check file or directory.
	if [ -f $name ] ; then
		continue
	fi

	cd $name
	git remote add $REMOTE https://github.com/$USERID/op-layout-$name.git
	cd ..
done
cd ../..

# Unit
cd asset/unit
for unit in *; do
	# Check file or directory.
	if [ -f $unit ] ; then
		continue
	fi

	cd $unit
	git remote add $REMOTE https://github.com/$USERID/op-unit-$unit.git
	cd ..
done
cd ../..

# Js/Css
cd asset/webpack/js/op
git remote add $REMOTE https://github.com/$USERID/op-webpack-js.js
cd ../../css/op
git remote add $REMOTE https://github.com/$USERID/op-webpack-css.js
cd ../../..

# Fetch origin
git submodule foreach git fetch $REMOTE
