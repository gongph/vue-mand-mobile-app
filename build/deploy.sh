#!/usr/bin/env sh

set -e

cd dist

echo gongph.me >> CNAME

git init
git config user.name 'gongph'
git config user.email 'gongph@foxmail.com'
git add -A
git commit -m 'deploy'

git push -f https://github.com/gongph/vue-mand-mobile-app.git master:gh-pages

cd -