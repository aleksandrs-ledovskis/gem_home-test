#!/bin/zsh
setopt shwordsplit
[[ -z "$SHUNIT2" ]] && SHUNIT2=/usr/share/shunit2/shunit2

source /usr/local/share/gem_home/gem_home.sh

function test_with_setopts()
{
  setopt auto_pushd
  setopt pushd_ignore_dups

  cd /tmp
  gem_home .
  assertEquals "/tmp" "$PWD"
}

function test_without_setopts()
{
  unsetopt auto_pushd
  unsetopt pushd_ignore_dups

  cd /tmp
  gem_home .
  assertEquals "/tmp" "$PWD"
}


SHUNIT_PARENT=$0 . $SHUNIT2
