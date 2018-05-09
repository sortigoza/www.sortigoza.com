#!/bin/bash

set -ex

yarn install
yarn build
cp -f ./error.html build/
aws --profile sortigoza s3 sync build/ s3://www.sortigoza.com
