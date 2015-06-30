# assuming your on osx & using homebrew to install go.

mkdir ~/go
export GOPATH=~/go
export PATH=$PATH:$GOPATH/bin
GOVERSION=$(brew list go | head -n 1 | cut -d '/' -f 6)
export GOROOT=$(brew --prefix)/Cellar/go/$GOVERSION/libexec
export PATH=$PATH:$GOROOT/bin

go get github.com/tools/godep
cd $GOPATH/src/github.com/mesosphere/mesos-dns
make all