# docker run --rm -it -v "$PWD":/usr/src/myapp -w /usr/src/myapp golang:1.8 bash

var NAME=$1
echo Detected Name: $NAME

for GOOS in darwin linux windows; do
  for GOARCH in 386 amd64; do
    export GOOS GOARCH
    go build -v -o $NAME-$GOOS-$GOARCH
  done
done
