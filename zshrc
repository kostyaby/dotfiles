export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"

CASE_SENSITIVE="false"
DISABLE_AUTO_UPDATE="true"
DISABLE_AUTO_TITLE="true"

plugins=(git)
export PATH="/usr/local/bin"\
":/usr/bin"\
":/bin"\
":/usr/sbin"\
":/sbin"\
":/usr/texbin"\
":/Users/kostya_by/.rvm/bin"\
"/usr/local/opt/go/libexec/bin"

export AIM_ROOT="/Users/kostya_by/Programming/aimatter/aim/"

source $ZSH/oh-my-zsh.sh

fpath=(/usr/local/share/zsh-completions $fpath)

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

setopt null_glob

# Functions for competitive programming
function compile() {
  clang++ -O2 -Wl,-stack_size -Wl,0x10000000 \
          -I/Users/kostya_by/Programming/git-repos/survival-kit \
          -lopencv_core -lopencv_imgproc -lopencv_highgui \
          -lopencv_ml -lopencv_video -lopencv_features2d \
          -lopencv_calib3d -lopencv_objdetect -lopencv_contrib \
          -lopencv_legacy -lopencv_flann \
          -DPENGUINS -x c++ -std=c++11 -o $1 $1.cpp
}

function test_one() {
  echo "Testing $2"
  echo "**********************"
  ./$1 < $2
  echo "**********************"
}

function test_many() {
  for input_file in ${@:2}
  do
    test_one $1 $input_file
  done
}

function test_all() {
  for input_file in *.in
  do
    test_one $1 $input_file
  done
}

