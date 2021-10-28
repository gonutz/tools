echo cls ^& git status> %GOPATH%\bin\st.bat
echo git commit> %GOPATH%\bin\cm.bat
echo git commit -a> %GOPATH%\bin\cma.bat
echo cls ^& git diff --color-moved=default %%*> %GOPATH%\bin\df.bat
echo cls ^& git diff --color-moved=default --staged %%*> %GOPATH%\bin\sdf.bat
echo cls ^& git difftool --staged %%*> %GOPATH%\bin\sdfd.bat
echo cls ^& git diff --stat %%*> %GOPATH%\bin\dfs.bat
echo cls ^& git difftool %%*> %GOPATH%\bin\dfd.bat
echo cls ^& git diff --stat --staged %%*> %GOPATH%\bin\sdfs.bat
echo git push origin master> %GOPATH%\bin\push.bat
echo git push origin --tags> %GOPATH%\bin\pushtags.bat
echo git push --all origin> %GOPATH%\bin\pushall.bat
echo git pull origin master> %GOPATH%\bin\pull.bat
echo git submodule update --init> %GOPATH%\bin\subs.bat
echo cls ^& git log --graph --oneline --pretty=format:"%%%%C(Yellow)%%%%h%%%%Creset %%%%C(auto)%%%%d%%%%Creset %%%%s %%%%C(Green)(%%%%an, %%%%cr)%%%%Creset"> %GOPATH%\bin\log.bat
echo git checkout %%*> %GOPATH%\bin\co.bat
echo git add %%*> %GOPATH%\bin\ad.bat
echo git add -u %%*> %GOPATH%\bin\ada.bat
echo git tag -a v%%* -m "version %%*"> %GOPATH%\bin\tagversion.bat
echo git commit --amend --no-edit %%*> %GOPATH%\bin\amend.bat
echo cls ^& git show %%*> %GOPATH%\bin\show.bat
echo git show --stat --oneline %%*> %GOPATH%\bin\showfiles.bat
echo git remote get-url origin> %GOPATH%\bin\giturl.bat
echo git ls-tree -r master --name-only> %GOPATH%\bin\gitlist.bat
echo @powershell -command "Get-Clipboard"> %GOPATH%\bin\paste.bat
copy cover.bat "%GOPATH%\bin\cover.bat"
copy clean.bat "%GOPATH%\bin\clean.bat"

echo go list -f {{.Deps}} %%* ^| replace_all ^" ^" ^"^\n^"> %GOPATH%\bin\listdeps.bat
echo go build %%*> %GOPATH%\bin\gb.bat
echo go fmt ./...> %GOPATH%\bin\fmt.bat

go get github.com/gonutz/x
go get github.com/gonutz/zip
go get github.com/gonutz/bin2go/v2/bin2go
go get github.com/gonutz/bin2delphi
go get github.com/gonutz/filever
go get github.com/gonutz/gif2pngs
go get github.com/gonutz/test2doc
go get github.com/gonutz/command_line_programs/...

REM add a 'Command Line' context menu item to Explorer
reg add "HKEY_CLASSES_ROOT\Directory\background\shell\Command Line"
reg add "HKEY_CLASSES_ROOT\Directory\background\shell\Command Line\command" /d cmd.exe

REM add a 'Run with cmd' for files in the Explorer context menu
reg add "HKEY_CLASSES_ROOT\*\shell\Run with cmd"
reg add "HKEY_CLASSES_ROOT\*\shell\Run with cmd\command" /d "cmd.exe /K ""%%1"""
