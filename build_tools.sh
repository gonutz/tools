echo "alias st='clear; git status'">>~/.bashrc
echo "alias cm='git commit'">>~/.bashrc
echo "alias cma='git commit -a'">>~/.bashrc
echo "alias df='clear; git diff'">>~/.bashrc
echo "alias sdf='clear; git diff --staged'">>~/.bashrc
echo "alias push='git push origin master'">>~/.bashrc
echo "alias pushtags='git push origin --tags'">>~/.bashrc
echo "alias pushall='git push --all origin'">>~/.bashrc
echo "alias pull='git pull origin master'">>~/.bashrc
echo "alias log='clear; git log --pretty=format:\"%h  %s%d\" --graph'">>~/.bashrc
echo "alias co='git checkout'">>~/.bashrc
echo "alias ad='git add'">>~/.bashrc
echo "tagversion() { git tag -a v\$1 -m \"version \$1\"; }">>~/.bashrc
echo "alias show='git show'">>~/.bashrc
echo "alias showfiles='git show --stat --oneline'">>~/.bashrc
echo "alias giturl='git remote get-url origin'">>~/.bashrc
echo "alias gitlist='git ls-tree -r master --name-only'">>~/.bashrc

echo "alias listdeps='go list -f {{.Deps}}'">>~/.bashrc
echo "alias gb='go build'">>~/.bashrc
echo "alias fmt='go fmt ./...'">>~/.bashrc

echo "alias x='exit'">>~/.bashrc
go get github.com/gonutz/zip
go get github.com/gonutz/bin2go/v2/bin2go
go get github.com/gonutz/bin2delphi
go get github.com/gonutz/gif2pngs
go get github.com/gonutz/test2doc
