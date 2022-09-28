#!/bin/bash

dockerize -wait tcp://mysql:3306 -timeout 60s
npm install
node index.js