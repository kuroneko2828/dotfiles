#!/bin/bash


# 猫の画像をダウンロード
download_cat_image() {
    local output_file="$1"
    curl -s "https://cataas.com/cat" -o "$output_file"
}

# iTerm2の背景画像を設定
set_iterm2_background() {
    local image_path="$1"
    osascript <<EOF
tell application "iTerm2"
    tell current session of current window
        set background image to "$image_path"
    end tell
end tell
EOF
}

# メイン処理
main() {
    # 一時ファイルのディレクトリを作成
    TEMP_DIR=$(mktemp -d)

    # 一時ファイルパスを生成
    CAT_IMAGE="${TEMP_DIR}/cat_$(date +%s).jpg"

    # 猫の画像をダウンロード
    if download_cat_image "$CAT_IMAGE"; then
        # iTerm2の背景に設定
        if set_iterm2_background "$CAT_IMAGE"; then
            echo "Successfully set cat background image: $CAT_IMAGE"
        else
            echo "Failed to set background image"
        fi
    else
        echo "Failed to download cat image"
    fi

    # スクリプト終了時に一時ファイルをクリーンアップ
    trap 'rm -rf "$TEMP_DIR"' EXIT
}

cd() {
    builtin cd "$@"
    main  >/dev/null 2>&1 &
    disown
}
