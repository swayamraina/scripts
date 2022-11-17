#############
###
###  @author: Swayam Raina
###  @description: This file searches common file in 2 dirs
###
##############################################################

#!/usr/bin/env bash

check_folder='/Users/swayam.raina/swiggy/instamart/dash-fulfilment'
overall_folder='/Users/swayam.raina/swiggy/instamart/dash-fulfilment/conf'

for file1 in "$check_folder/"*; do
    found=false
    for file2 in "$overall_folder/"*; do
        if cmp -s "$(basename ${file1})" "$(basename ${file2})"; then
            found=true
        fi
    done
    if [[ "$found" = true ]]; then
        echo $(basename ${file1})
    fi
done

