
# branch name
BRANCH=${1:-2021}

# Init git submodule
git submodule init
git submodule update
git submodule foreach git submodule update --init
git submodule foreach git checkout $BRANCH
