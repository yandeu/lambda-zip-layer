#!/bin/pwsh

if (Test-Path layer) {
  Remove-Item layer -force -recurse
}

docker image build -t zip-layer .

docker run --rm -v $PWD/layer/:/tmp/layer zip-layer

Get-ChildItem layer