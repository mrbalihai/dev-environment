alias ls='ls -GCop'

# PS1----
# get current branch in git repo
function parse_git_branch() {
    BRANCH=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
    if [ ! "${BRANCH}" == "" ]
    then
        echo "(${BRANCH})"
    else
        echo ""
    fi
}

# \xe2\x98\x85 = star
INPUTCHAR=$'\xe2\x98\x85 '

#Displays as: user@host ~/path/to/dir (git branch)
export PS1="\[\e[32m\]\u\[\e[m\]\[\e[32m\]@\[\e[m\]\[\e[32m\]\h\[\e[m\] \[\e[33m\]\w\[\e[m\] \[\e[33m\]\`parse_git_branch\`\[\e[m\]\n"$INPUTCHAR
