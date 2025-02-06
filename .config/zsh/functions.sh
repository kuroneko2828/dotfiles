#!/bin/zsh
function gcs_cat () {
    if [ $# -ne 1 ] && [ $# -ne 2 ];then
        echo "Usage: gcs_cat gs://hogehuga.jpg";
        echo "Option -d --delete Delete file";
        return
    fi

    gcs_uri=$1
    # URLチェック
    pattern="^gs://.*\.jpg$"
    if [[ $gcs_uri =~ $pattern ]]; then
        echo "Match: $gcs_uri"
    else
        echo "No match: $gcs_uri"
        return
    fi
    echo $gcs_uri

    delete_flag=0
    if [[ $2 = "-d" || $2 = "--delete" ]]; then
        delete_flag=1
    fi

    directory="$HOME/Downloads/receipts/"

    if [ ! -d "$directory" ]; then
        mkdir -p "$directory"       
        echo "Directory created: $directory"
    else
        echo "Directory already exists: $directory"
    fi

    gsutil cp $gcs_uri $directory
    file_name=$(basename $gcs_uri)
    imgcat "${directory}${file_name}"

    if [ $delete_flag = 1 ]; then
        rm "${directory}${file_name}"
    fi
}

function pyfmt () {
    if [ $# -ne 1 ];then
        echo "Usage: pyfmt <file>";
        return
    fi
    black $1
    echo "[black done]"
    isort $1
    echo "[isort done]"
}

function word_search() {
    files=$(grep $1 -rl $2)
    files=(`echo $files`)
    for file in ${files}; do
        echo $file
        # colorize
        grep --color=always -n $1 $file
        echo ""
    done
}

function gcloud_logout() {
    gcloud auth revoke
    echo y | gcloud auth application-default revoke
}
