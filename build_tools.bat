setlocal
set BIN=%GOBIN%

echo cls ^& git status> %BIN%\st.bat
echo git commit %%*> %BIN%\cm.bat
echo git commit -a %%*> %BIN%\cma.bat
echo cls ^& git diff --color-moved=default %%*> %BIN%\df.bat
echo cls ^& git diff --color-moved=default --staged %%*> %BIN%\sdf.bat
echo cls ^& git difftool --staged %%*> %BIN%\sdfd.bat
echo cls ^& git diff --stat %%*> %BIN%\dfs.bat
echo cls ^& git difftool %%*> %BIN%\dfd.bat
echo cls ^& git diff --stat --staged %%*> %BIN%\sdfs.bat
echo git push origin main> %BIN%\push.bat
echo git push origin --tags> %BIN%\pushtags.bat
echo git push --all origin> %BIN%\pushall.bat
echo git pull origin main> %BIN%\pull.bat
echo git pull --tags> %BIN%\pulltags.bat
echo git submodule update --init --recursive> %BIN%\subs.bat
echo git clone --recurse-submodules %%*> %BIN%\clone.bat
echo cls ^& git log --graph --oneline --pretty=format:"%%%%C(Yellow)%%%%h%%%%Creset %%%%C(auto)%%%%d%%%%Creset %%%%s %%%%C(Green)(%%%%an, %%%%cr)%%%%Creset"> %BIN%\log.bat
echo git checkout %%*> %BIN%\co.bat
echo git checkout --recurse-submodules %%*> %BIN%\cor.bat
echo git add %%*> %BIN%\ad.bat
echo git add -u %%*> %BIN%\ada.bat
echo git tag -a v%%* -m "version %%1"> %BIN%\tagversion.bat
echo git tag -l --sort=v:refname> %BIN%\tags.bat
echo git commit --amend --no-edit %%*> %BIN%\amend.bat
echo cls ^& git show %%*> %BIN%\show.bat
echo git show --stat --oneline %%*> %BIN%\showfiles.bat
echo git remote get-url origin> %BIN%\giturl.bat
echo git ls-tree -r main --name-only> %BIN%\gitlist.bat
echo go list -f {{.Deps}} %%* ^| replace_all ^" ^" ^"^\n^"> %BIN%\listdeps.bat
echo go build %%*> %BIN%\gb.bat
echo go fmt ./...> %BIN%\fmt.bat

echo @powershell -command "Get-Clipboard"> %BIN%\paste.bat
copy cover.bat "%BIN%\cover.bat"
copy clean.bat "%BIN%\clean.bat"

cmd /C go install github.com/gonutz/x@latest
echo x> %BIN%\q.bat

cmd /C go install github.com/gonutz/bin2go/v2/bin2go@latest
cmd /C go install github.com/gonutz/bin2delphi@latest
cmd /C go install github.com/gonutz/filever@latest
cmd /C go install github.com/gonutz/gif2pngs@latest
cmd /C go install github.com/gonutz/test2doc@latest
cmd /C go install github.com/gonutz/command_line_programs/...@latest
cmd /C go install github.com/gonutz/normalize@latest
