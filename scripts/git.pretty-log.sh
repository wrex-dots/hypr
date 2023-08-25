#!/bin/sh

args=`git rev-parse --abbrev-ref HEAD`
format='%w(90,2,5)%C(ul #f08000)%h%C(noul):%Creset %C(bold)%s%Creset%n%C(#f08000)└%C(dim #f08000)%an, %cr%+gD%Creset'
style='grid'

if [[ "$1" = "--short" ]]; then
  shift;
  format='%w(90,2,5)%C(ul #f08000)%h%C(noul):%Creset %C(bold)%s%Creset'
  style+=',numbers'
fi


plog() {
  git --no-pager \
      log ${@} \
      --color \
      --graph \
      --abbrev-commit \
      --decorate=auto \
      --pretty=format:"$format"
}

plog ${@} | bat --style="$style";
