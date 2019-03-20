

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

# Update master
    git checkout master 
    git pull origin “name of your branch”

# Check what branch you are on
    git branch 

