#############
###
###  @author: Swayam Raina
###  @description: This file keeps a static lock on
###                a directory
###
#####################################################

cd() {

    secret_path="/path/to/dir"
    correct_pwd="********"

    if [ -z $@ ]; then
        builtin cd "$@"
    else
        pwd=`pwd`
        path="$pwd/$@"
        if [[ $path == *"$secret_path"* ]]; then
            echo "You are not authorized to enter this dir : $@";
            printf 'enter admin password  $: ';
            read -r password;
            if [ $password = "$correct_pwd" ]; then
                builtin cd "$@"
            else
                echo "incorrect password!!!"
            fi
        else
            builtin cd "$@"
        fi
    fi
}
