#! /bin/bash

# load envvars from dotenv file
if [ -f .env ]
then
export $(cat .env | xargs)
fi

# copy all conf files into project directory
for i in $GITCONFIG_PATH $TMUX_CONF_PATH $VIMRC_PATH $ZSHRC_PATH
do
echo now copying $i
cp $i $PROJECT_DIR
done

# export brew formulae and casks
echo now exporting formulae and casks
for file in brew_formulae.txt brew_casks.txt
do
if [ -f $file ] 
then
rm $file
fi
done
brew list --formulae -1 >> brew_formulae.txt
brew list --casks -1 >> brew_casks.txt