# ~/.bash_logout
cd /home/gaos74/newRepo/CS1XC3
find . -type f -printf "%t - %p\n" | sort -n
git add *
git commit -m "Shell Logout Commit"
git push
