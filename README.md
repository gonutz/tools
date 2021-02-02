# Alias Commands for git

```
st         clear screen + git status
cm         git commit
cma        git commit -a
df         clear screen + git diff *
sdf        clear screen + git diff --staged *
sdfd       clear screen + git difftool --staged *
dfs        clear screen + git diff --stat *
dfd        clear screen + git difftool *
sdfs       clear screen +  git diff --stat --staged *
push       git push origin master
pushtags   git push origin --tags
pushall    git push --all origin
pull       git pull origin master
log        clear screen + git log
           formatted like this:
               * 2a2829a  Latest commit (HEAD -> master, origin/master, origin/HEAD)
               * 3f918ca  Short commit message
               * 3f918ca  Initial commit
co         git checkout *
ad         git add *
tagversion git tag -a v%%* -m "version %%*"
           the command tagversion 1.2.3 will be interpreter as
               git tag -a v1.2.3 -m "version 1.2.3"
           inserting a v before the tag name and generating the tag message "version x.y.z"
show       clear screen + git show *
showfiles  git show --stat --oneline *
           shows all the touched files of a specified commit (or the last one if you omit it)
giturl     shows the URL of origin
gitlist    show all files currently under source control
cover      run all Go tests and display test coverage profile as HTML in browser. cover is currently only available on Windows.
```

# Alias Commands for Go

```
listdeps go list -f {{.Deps}} *
         lists all package dependencies of the given module (or the current path's module if omitted)
gb       go build *
fmt      go fmt *
```

# General Tools

```
x          close the current command line
zip        create a zip file of the given path(s)
bin2go     convert the data on stdin to a Go byte slice
bin2delphi convert the data on stdin to a Delphi array of byte
filever    print the file version of an executable on Windows to stdout
gif2pngs   save all frames of a .gif image as .png image files
test2doc   create a nice list of descriptions from your Go unit tests, this assumes you name your tests in a Behavior-Driven-Development way
```

# Windows Shortcuts

On Windows when run as administrator this will:

- Add a right-click shortcut "Command Line" to the Windows Explorer that will open a cmd in that folder.

- Add a right-click shortcut "Run with cmd" for files to the Windows Explorer that will open a cmd and execute the file. For .exe files this will run them, for other files this will do whatever the associated default program for its extension is. The cmd will stay open after the file is executed. This allows you to see the stdout and stderr of a program.
