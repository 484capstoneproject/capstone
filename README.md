# Dowload git
https://github.com/git-for-windows/git/releases/download/v2.21.0.windows.1/Git-2.21.0-64-bit.exe
   
# Set up
**Make sure you are in the right directory (i.e cd desktop)**

    git clone *link from GitHub*
    cd capstone
    git checkout "name of your branch"

# Commit/Push changes
    git checkout "name of the branch that you are trying to push"
    git add .
    git commit -m “your message”
    git push

    If git push did not work:
    git push origin -u "name of your branch"

# Before updating branches with locally made changes
    git add .
    git commit -m “your message”

# Bring master up to date with your branch
    git checkout master 
    git pull origin “name of your branch”

# Bring branch up to date with master
    git checkout “name of your branch”
    git pull origin master

# Check what branch you are on
    git branch 
    
# View all branches
    git branch -a

# Deleting branches
To delete a local/remote branch
    
    git branch -d the_local_branch
    git push origin --delete the_remote_branch

# Overwrite	local files with remote files <br> **!Last Resort!**
    git fetch --all
    git reset --hard origin/master

