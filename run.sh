#!/bin/sh

docker build -q .|xargs docker run -v `pwd`:/output
