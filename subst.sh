#!/bin/bash

cmd=""

while read x y ; do
  a="<span class=\"subst\" data-x=\"$x\">[^<]*<\/span>"
  b="<span class=\"subst\" data-x=\"$x\">$y<\/span>"
  c="<span class=\"subst\" data-x=\"${x^}\">[^<]*<\/span>"
  d="<span class=\"subst\" data-x=\"${x^}\">${y^}<\/span>"
  cmd="${cmd}s/$a/$b/g;s/$c/$d/g;"
done < $1

for f in EPUB/*.xhtml ; do
  sed -i "$cmd" $f
done
