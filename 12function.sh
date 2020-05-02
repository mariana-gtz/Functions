#!/bin/bash

countFiles1(){
  ls | wc -l
}

pathArray=(/etc/apt/sources.list.d/ /var/lib/apt/lists/ /usr/bin)

for i in ${pathArray[@]}
do
  echo $i
  cd $i
  countFiles1
done
