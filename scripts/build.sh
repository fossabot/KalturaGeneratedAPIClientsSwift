#!/bin/bash

travis_fold() {
  local action=$1
  local name=$2
  echo -en "travis_fold:${action}:${name}\r"
}

travis_fold start foo

echo "xcodebuild"

xcodebuild clean build test -workspace Example/KalturaClient.xcworkspace -scheme KalturaClient_Tests -destination 'platform=iOS Simulator,name=iPhone 7 Plus,OS=10.3.1'

travis_fold end foo
