

################
# project setup
################

mkdir assets
mkdir assets/fonts

mkdir brief

mkdir build
mkdir build/dev build/dist #build/prod
mkdir build/dev/js build/dev/scss

mkdir design

# mkdir tools >> git repo with tools ??  photoshop plugins spritesheet generators

# basic files
touch build/README.md
touch brief/todo.md
touch brief/specs.txt

################################
# scss setup
################################

# make sure is installed ?
# install bourbon & neat  compass?
cd build/dev/scss
bourbon install
neat install
# back to route
cd ../../..

################################
# git setup
################################

# import git repo ??
# create git repo
cd build #or cd build/dev
git init

################
# git ignore
################

touch .gitignore
echo ".gitignore" >> .gitignore
echo "*.sublime-*" >> .gitignore
echo ".DS_Store" >> .gitignore
echo ".sass-cache" >> .gitignore

echo "dev/scss/bourbon" >> .gitignore
echo "dev/scss/neat" >> .gitignore
echo "dist/" >> .gitignore
echo "README.md" >> .gitignore

echo "design/" >> .gitignore
echo "assets/" >> .gitignore

echo "*.min.js" >> .gitignore
echo "*.mp4" >> .gitignore
echo "*.ogv" >> .gitignore
echo "*.webm" >> .gitignore
echo "*.png" >> .gitignore
echo "*.jpg" >> .gitignore
echo "*.woff" >> .gitignore
echo "*.css.map" >> .gitignore
echo "*.css" >> .gitignore



# post setup delete bash file to protect rerun and overwrite?
# rm -f setup.sh  #project-setup.sh



