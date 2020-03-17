go test %* -coverprofile=___coverprofile
@if errorlevel 1 goto :eof
@go tool cover -html=___coverprofile -o ___coverprofile.html
@start ___coverprofile.html
@ping -n 2 127.0.0.1 >nul
@del ___coverprofile.html
@del ___coverprofile
