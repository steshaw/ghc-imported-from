#!/bin/bash

PS4='($LINENO)+ '
set -x

rm -fr .cabal-sandbox cabal.sandbox.config dist

cabal sandbox init

export PATH=`pwd`/.cabal-sandbox/bin:$PATH

cabal install --haddock-hyperlink-source --dependencies-only # Is this necessary? Why not just cabal install?
cabal configure --enable-tests
cabal install
