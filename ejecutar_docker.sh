#!/bin/bash

 docker run -it --rm -p4567:4567 -v$PWD:/workspace registry.gitlab.com/fiuba-memo2/imagen-para-katas:latest /bin/bash