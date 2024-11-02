#!/usr/bin/env bash
# shellcheck disable=SC2230
#  vim:ts=4:sts=4:sw=4:et
#
#  Author: Nho Luong
#  Date: 2015-05-25 01:38:24 +0100 (Mon, 25 May 2015)
#
#  https://github.com/nholuongut/devops-golang-tools
#
#  License: see accompanying Nho Luong LICENSE file
#
#  If you're using my code you're welcome to connect with me on LinkedIn
#  and optionally send me feedback to help improve or steer this or other code I publish
#
#  https://www.linkedin.com/in/nholuong
#

# intended only to be sourced by utils.sh
#
# split from utils.sh as this is specific to this repo

set -eu
[ -n "${DEBUG:-}" ] && set -x

isExcluded(){
    local prog="$1"
    # false positive
    # shellcheck disable=SC2049
    [[ "$prog" =~ ^\* ]] && return 0
    # this external git check is expensive, skip it when in CI as using fresh git checkouts
    is_CI && return 1
    if type -P git &>/dev/null; then
        commit="$(git log "$prog" | head -n1 | grep 'commit')"
        if [ -z "$commit" ]; then
            return 0
        fi
    fi
    return 1
}
