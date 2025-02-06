add-zsh-hook preexec write_log

MAX_ENTRIES=100000
LOG_FILE=~/.command_log

write_log() {
    echo "$(date '+%Y-%m-%d %H:%M:%S')\t$(pwd)\t$1" >> $LOG_FILE

    # ログファイルの行数を確認し、最大数を超えた場合は古いエントリを削除
    local line_count=$(wc -l < "$LOG_FILE")
    if (( line_count > MAX_ENTRIES )); then
        # 古いエントリを削除（最初の行を削除）
        sed -i '1d' "$LOG_FILE"
    fi
}
