#!/usr/local/bin/bash

mkdocs build
rsync -rv site/ root@scaleway-1:/var/www/francescoface.it/web/mac-setup/
