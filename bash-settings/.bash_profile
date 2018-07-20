# Welcome message
# ------------------------------------------------------------
echo "Initiated .bash_profile"

# Change Prompt
# ------------------------------------------------------------
export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"

export PS1="________________________________________________________________________________\n| [\t] \u @ \w  \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\] \n| => $ "
export PS2="| => "

# Set Paths
# ------------------------------------------------------------
# export PATH=/usr/local/bin:$PATH

# Set default blocksize for ls, df, du
# from this: http://hints.macworld.com/comment.php?mode=view&cid=24491
# ------------------------------------------------------------
export BLOCKSIZE=1k

# Set Default Editor
# ------------------------------------------------------------
export EDITOR=code

# Set Aliases
# ------------------------------------------------------------
alias path='echo -e ${PATH//:/\\n}'
alias tree='tree -I "node_modules|bower_components"'
alias postgres-start='postgres -D /usr/local/var/postgres'

# I don't know what this does. starts .bashrc also..?
# ------------------------------------------------------------
[[ -r ~/.bashrc ]] && . ~/.bashrc
# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
# PATH="${PATH}:/Library/Frameworks/Python.framework/Versions/3.6/bin"
export PATH
