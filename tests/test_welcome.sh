#!/usr/bin/env bash
#  vim:ts=4:sts=4:sw=4:et
#
#  Author: Nho Luong
#  Date: 2015-11-05 23:29:15 +0000 (Thu, 05 Nov 2015)
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

set -eu
[ -n "${DEBUG:-}" ] && set -x
srcdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd "$srcdir/.."

# shellcheck disable=SC1091
. ./tests/utils.sh

section "Testing Welcome"

# Fedora doesn't have /var/log/wtmp
if ! [ -f /var/log/wtmp ]; then
    echo "/var/log/wtmp doesn't exist, touching..."
    # defined in bash-tools/lib/utils.sh
    # shellcheck disable=SC2154
    $sudo touch /var/log/wtmp || :
fi

build welcome

# $bin defined in tests/utils.sh
# shellcheck disable=SC2154
run "$bin/welcome"

run "$bin/welcome" -q
