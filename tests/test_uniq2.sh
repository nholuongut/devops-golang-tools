#!/usr/bin/env bash
#  vim:ts=4:sts=4:sw=4:et
#
#  Author: Nho Luong
#  Date: 2020-06-02 12:37:27 +0100 (Tue, 02 Jun 2020)
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

section "Testing Uniq2"

build uniq2

# $bin defined in tests/utils.sh
# shellcheck disable=SC2154
run "$bin/uniq2" < tests/data/uniq.txt

run "$bin/uniq2" tests/data/uniq.txt

run "$bin/uniq2" -c tests/data/uniq.txt

run "$bin/uniq2" -w tests/data/uniq.txt

run "$bin/uniq2" -c -w tests/data/uniq.txt
