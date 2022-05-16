echo "alias st='clear; git status'">>~/.bashrc
echo "alias cm='git commit'">>~/.bashrc
echo "alias cma='git commit -a'">>~/.bashrc
echo "alias df='clear; git diff --color-moved=default'">>~/.bashrc
echo "alias sdf='clear; git diff --color-moved=default --staged'">>~/.bashrc
echo "alias sdfd='clear; git difftool --staged'">>~/.bashrc
echo "alias dfs='clear; git diff --stat'">>~/.bashrc
echo "alias dfd='clear; git difftool'">>~/.bashrc
echo "alias sdfs='clear; git diff --stat --staged'">>~/.bashrc
echo "alias push='git push origin main'">>~/.bashrc
echo "alias pushtags='git push origin --tags'">>~/.bashrc
echo "alias pushall='git push --all origin'">>~/.bashrc
echo "alias pull='git pull origin main'">>~/.bashrc
echo "alias pulltags='git pull --tags'">>~/.bashrc
echo "alias subs='git submodule update --init --recursive'">>~/.bashrc
echo "alias clone='git clone --recurse-submodules'">>~/.bashrc
echo "alias log='clear; git log --graph --oneline --pretty=format:\"%C(Yellow)%h%Creset %C(auto)%d%Creset %s %C(Green)(%an, %cr)%Creset\"'">>~/.bashrc
echo "alias co='git checkout'">>~/.bashrc
echo "alias cor='git checkout --recurse-submodules'">>~/.bashrc
echo "alias ad='git add'">>~/.bashrc
echo "alias ada='git add -u'">>~/.bashrc
echo "tagversion() { git tag -a v\$1 -m \"version \$1\"; }">>~/.bashrc
echo "alias tags='git tag -l --sort=v:refname'">>~/.bashrc
echo "alias amend='git commit --amend --no-edit'">>~/.bashrc
echo "alias show='git show'">>~/.bashrc
echo "alias showfiles='git show --stat --oneline'">>~/.bashrc
echo "alias giturl='git remote get-url origin'">>~/.bashrc
echo "alias gitlist='git ls-tree -r main --name-only'">>~/.bashrc

echo "listdeps() { go list -f {{.Deps}} $1 | replace_all \" \" \"\\n\" }">>~/.bashrc
echo "alias gb='go build'">>~/.bashrc
echo "alias fmt='go fmt ./...'">>~/.bashrc

echo "alias x='exit'">>~/.bashrc
go get github.com/gonutz/bin2go/v2/bin2go
go get github.com/gonutz/bin2delphi
go get github.com/gonutz/gif2pngs
go get github.com/gonutz/test2doc
go get github.com/gonutz/command_line_programs/...
