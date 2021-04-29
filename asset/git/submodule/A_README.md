Here is the auto control shell script for the Git submodule.
===

 1. init.sh
 2. rename.sh
 3. update.sh
 4. z.sh

# init.sh

 Be sure to do this first.
 Initialize the submodule and update to the latest branch.

```
sh ./init.sh
```

# rename.sh

 Use this as needed.
 Rename the repositories for all submodules.

```
# "origin" is change to "github"
sh ./rename.sh origin github
```

# update.sh

```
sh ./update.sh
```

# z-original.sh

 Set up a private repository for all submodules.

```
sh ./z-original.sh
```
