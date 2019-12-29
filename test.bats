#!/usr/bin/env bash

load './node_modules/bats-support/load'
load './node_modules/bats-assert/load'

source $BATS_TEST_DIRNAME/emptyshell

@test "regurgitates args" {
  run emptyshell -a -b -c -d
  assert_output "-a -b -c -d"
}
