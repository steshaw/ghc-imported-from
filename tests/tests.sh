#!/bin/bash

bin="ghc-imported-from"

opts="--ghc-options -global --ghc-pkg-options --global --package-db /home/carlo/work/github/ghc-imported-from/.cabal-sandbox/x86_64-linux-ghc-7.6.3-packages.conf.d"

# TODO Automate these. HUnit?

$bin Muddle.hs Muddle Maybe       11 11 $opts

echo ""
echo "---------------------------------------------------------"
echo ""

$bin Muddle.hs Muddle Just        12 7 $opts

echo ""
echo "---------------------------------------------------------"
echo ""

$bin Muddle.hs Muddle Just        16 10 $opts

echo ""
echo "---------------------------------------------------------"
echo ""

$bin Muddle.hs Muddle String      20 14 $opts

echo ""
echo "---------------------------------------------------------"
echo ""

$bin Muddle.hs Muddle Int         22 23 $opts

echo ""
echo "---------------------------------------------------------"
echo ""

$bin Muddle.hs Muddle DL.length   23 5 $opts

echo ""
echo "---------------------------------------------------------"
echo ""

$bin Muddle.hs Muddle print       25 8 $opts

echo ""
echo "---------------------------------------------------------"
echo ""

$bin Muddle.hs Muddle DM.fromList 27 5 $opts

echo ""
echo "---------------------------------------------------------"
echo ""

$bin Muddle.hs Muddle Safe.headMay 29 6 $opts

echo ""
echo "---------------------------------------------------------"
echo ""

$bin Hiding.hs Hiding map           12 5 $opts

echo ""
echo "---------------------------------------------------------"
echo ""

$bin Hiding.hs Hiding head          12 5 $opts

echo ""
echo "---------------------------------------------------------"
echo ""

$bin When.hs When when 15 5 $opts

