#! /bin/bash
terraform plan 2> error > /dev/null #redirecting the standard error to error file
cat error
my_array=($(cat error| grep "github_user.validate_user"| cut -d '"' -f 4))
echo ${my_array[*]}
echo -e "'\033[0;35m'ERROR: these lanid's have some issue. pls recheck them:${my_array[*]}"