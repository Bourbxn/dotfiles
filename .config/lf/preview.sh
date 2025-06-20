#!/bin/sh
case "$(file -Lb --mime-type -- "$1")" in
image/*)
    chafa -f sixel -s "$2x$3" --animate off --polite on -t 1 --bg black "$1"
    ;;
text/*)
    bat --color=always --style=numbers,grid --paging=never "$1"
    ;;
*)
    file -Lb "$1"
    ;;
esac
