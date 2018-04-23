if [ "$#" -gt 0 ]; then

        sudo git init --bare "$1.git"

        #sudo cd "/path/to/$1.git"
        sudo chgrp -R git "$1.git"
        sudo chmod -R g+rwX "$1.git"
        sudo find "$1.git" -type d -exec chmod g+s '{}' +
        echo "git clone git@192.168.0.224:/rep/$1.git"
else
        echo "Please input a name as your Rep name"

fi

