#!/usr/bin/env bash

"""
#######################################################################
#                                                                     #
#   Bash script Automation (git command)                              #
#                                                                     #
#   commands to push your source code in your repository              #
#   (run: ./git)                                                      #
#                                                                     #
#######################################################################
"""
git add .

if [ -z "$GITCOMMIT" ]
then
        echo "commit is empty"
        echo "write some message:"
        read -r commit
        while [ -z "$commit" ]
        do
               echo "please write some message: "
               read -r commit
       done
       export GITCOMMIT="script git writting covoiturage - $commit"
fi

git commit -m "$GITCOMMIT"
git push

echo " "
echo "code success | https://dirkk.ci"