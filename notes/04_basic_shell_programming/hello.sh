function countargs {
    echo "$# args."
}

countargs "$*"
countargs "$@"
