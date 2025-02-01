@echo off

set GOROOT=%USERPROFILE%\Downloads\go1.21.0.windows-amd64\go
set GOPATH=%USERPROFILE%\Downloads\gopath

set PATH=^
%USERPROFILE%\Downloads\PortableGit\bin;^
%GOROOT%\bin;^
%GOPATH%\bin;

go install github.com/akavel/rsrc &&^
rsrc -manifest test.manifest -o rsrc.syso &&^
go build -ldflags="-H windowsgui"
