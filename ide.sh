#!/bin/bash
function cpp_ide_install {
  # c++ ide: codeblock is best for me. eclipse:cdt is also good. 
  # refer to the following link for latest information
  # https://launchpad.net/~damien-moore/+archive/ubuntu/codeblocks-stable
  # http://www.codeblocks.org/home
  sudo add-apt-repository ppa:damien-moore/codeblocks-stable
  sudo apt-get update
  sudo apt-get install codeblocks codeblocks-contrib
}

