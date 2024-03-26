#! /bin/bash

echo --- begin ---
# load envvars from dotenv file
if [ -f .env ]
  then
  source .env
fi

# copy all conf files into project directory
echo copying config files ...
for path in $gitconfig_path $tmux_conf_path $vimrc_path "$vscode_settings_path" $zshrc_path
  do
  echo "   now copying $path"
  cp "$path" $project_dir
done

# export brew formulae and casks
echo "exporting formulae and casks ..."
for file in brew_formulae.txt brew_casks.txt
  do
  if [ -f $file ] 
    then
    rm $file
  fi
done
brew list --formulae -1 > brew_formulae.txt
brew list --casks -1 > brew_casks.txt

# export vscode extensions
echo exporting vscode extensions ...
code --list-extensions > code_extensions.txt

# clean up
echo cleaning up ...
cat .gitconfig \
  | sed 's/name =.*/name = <user name>/' \
  | sed 's/email =.*/email = <user email>/' \
  >> tmp.txt
cat tmp.txt > .gitconfig
rm tmp.txt

echo --- complete ---