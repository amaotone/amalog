#!/bin/bash
set -u

usage() {
    cmdname=`basename $0`
    echo "Usage: $cmdname [slug]" 1>&2
}

main() {
    [ $# -ne 1 ] && usage && exit 1

    slug="$1"
    name="post/$(date +"%Y-%m-%d")-${slug}.md"
    path="content/$name"
    if [ ! -e "$path" ]; then
        hugo new "$name"
        sed -i "" "s/title = \".*\"/title = \"\"/g" "$path"
        sed -i "" "s/slug = \".*\"/slug = \"$slug\"/g" "$path"
    else
        echo "$name already exists."
    fi
    exit 0
}

main "$@"
