# Create local branch
**Make sure you are in the right directory (i.e desktop)**

    cd *drag your directory here/show path*
    git clone *link from GitHub*
    git checkout -b “your full name

# Commit/Push changes
    git checkout "name of your branch"
    git add .
    git commit -m “your message”
    git push

    If git push did not work:
    git push origin -u "name of your branch"

# Before updating branches with locally made changes
    git add .
    git commit -m “your message”

# Update master
    git checkout master 
    git pull origin “name of your branch”

# Update your branch with master
    git checkout “name of your branch”
    git pull origin master

# Check what branch you are on
    git branch 

# Overwrite	local files with remote files<br> **!Last Resort!**
    git fetch -all
    git reset --hard origin/master

