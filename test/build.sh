#!/bin/bash

go mod vendor

docker run --rm -w "/builder" -v "$PWD:/builder" heroiclabs/nakama-pluginbuilder:3.14.0 build -buildmode=plugin -trimpath -o output.so

mv -f output.so ../docker/nakama/data/modules/backend.so

