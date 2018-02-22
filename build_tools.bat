echo cls ^& git status> %GOPATH%\bin\st.bat
echo cls ^& git diff %%*> %GOPATH%\bin\df.bat
echo cls ^& git diff --staged %%*> %GOPATH%\bin\sdf.bat
echo git push origin master> %GOPATH%\bin\push.bat
echo git pull origin master> %GOPATH%\bin\pull.bat
echo cls ^& git log --pretty=format:"%%%%h  %%%%s%%%%d" --graph> %GOPATH%\bin\log.bat
echo git checkout %%*> %GOPATH%\bin\co.bat
echo git add %%*> %GOPATH%\bin\ad.bat

go get github.com/gonutz/x
go get github.com/gonutz/zip
go get github.com/gonutz/bin2go/v2/bin2go
go get github.com/gonutz/bin2delphi
go get github.com/gonutz/filever
go get github.com/gonutz/gif2pngs
go get github.com/gonutz/test2doc
