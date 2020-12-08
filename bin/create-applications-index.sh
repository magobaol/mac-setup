#!/usr/local/bin/bash

#References
# Bash - Printing Directory Files - https://stackoverflow.com/questions/17790527/bash-printing-directory-files
# Bash Concatenate Strings - https://linuxize.com/post/bash-concatenate-strings/
# How to add newlines into variables in bash script - https://unix.stackexchange.com/questions/20035/how-to-add-newlines-into-variables-in-bash-script
# Extract filename and extension in Bash - https://stackoverflow.com/questions/965053/extract-filename-and-extension-in-bash
# How to get the first line of a file in a bash script? - https://stackoverflow.com/questions/2439579/how-to-get-the-first-line-of-a-file-in-a-bash-script
# Remove particular characters from a variable using bash - https://unix.stackexchange.com/questions/104881/remove-particular-characters-from-a-variable-using-bash
# How to write multiple line string using Bash with variables? - https://stackoverflow.com/questions/7875540/how-to-write-multiple-line-string-using-bash-with-variables

target="./docs/applications"
FILES=""
for f in "$target"/*.md
do
  fullfilename=$(basename $f)

  if [[ "$fullfilename" == 'index.md' ]]; then
   continue
  fi

  filename="${fullfilename%.*}"
  read -r firstline<$f

  FILES=${FILES}'- ['${firstline//# }']('${fullfilename}')'
  FILES=${FILES}$'\n'
done

cat >$target"/index.md" <<EOF
# Tutte le applicazioni

${FILES}
EOF
