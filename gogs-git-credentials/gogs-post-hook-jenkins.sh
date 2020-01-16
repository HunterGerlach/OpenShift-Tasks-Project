#!/bin/bash

while read oldrev newrev refname
do
  branch=$(git rev-parse --symbolic --abbrev-ref $refname)
  if [[ "$branch" == "master" ]]; then
    curl -k -X POST --user user13-admin-edit-view:11fe38686d14f04df2fe2410b72d002381 http://jenkins.ca4f-jenkins.svc.cluster.local/job/Tasks/build
  fi
done
