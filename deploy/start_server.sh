#!/bin/bash
#
# Skrypt odpala serwer w osobnym procesie jako root na porcie 80
#

# Definicje
BUNDLE=/usr/local/bin/bundle
JEKYLL=/home/155173pj/.gem/ruby/gems/jekyll-3.2.1/exe/jekyll

# Tak dla pewności...
export HOME=/home/155173pj

# Uruchamienie serwera na porcie 80
sudo $BUNDLE exec $JEKYLL serve --host 0.0.0.0 --port 80 --detach
