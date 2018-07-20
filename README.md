# Kenworthe's guide for installing and configuring apps and settings for a new workstation.

I just bought a new Macbook Pro 2016. Didn't install anything yet, completely blank slate.

At the time of writing this, it is running: MacOS Sierra 10.12.3.

Jotting my notes down here for future reference, or for anybody interested in a quick-start guide.


## Good resources: 

https://github.com/ATL-WDI-Curriculum/student-laptop-requirements-and-setup
https://www.taniarascia.com/setting-up-a-brand-new-mac-for-development/
https://help.github.com/articles/creating-an-access-token-for-command-line-use/


## Software to download and install: 

### Programming: 

* iTerm2 (Terminal replacement)
* VS Code
* IntelliJ IDEA CE
* Chrome
  * **Necessary extensions:**
  * uBlock Origin
  * EditThisCookie
  * OneTab
  * **Optional extensions:**
  * Reddit Enhancement Suite
  * BuiltWith
  * Momentum
* Firefox
* Robomongo
* Postman
* Sip (through App Store)

### Media: 

* Spotify
* VLC Player
* Gimp (free version of Photoshop)

### Communications: 

* Slack
* Discord
* Skype

### Productivity: 

* Flux
* Google Drive
* Better Touch Tool (purchased)

### Other: 

* uTorrent
* Steam
* Office 365


## Pre-setup:

0. Import my bash appearance settings. (See files in this repo.)
1. Create and configure .bash_profile and .bashrc (Again, see files in this repo.)

        touch .bash_profile and .bashrc

2. Edit .bash_profile with:

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

        # I don't know what this does. starts .bashrc also..?
        # ------------------------------------------------------------
        [[ -r ~/.bashrc ]] && . ~/.bashrc
        
3. Edit .bashrc with:

        echo "Initiated .bashrc"

4. check $PATH by doing: 

        echo $PATH

It should be:

        /usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin

If it does not reflect the same as above, edit it in .bash_profile (See the commented out line).

5. install Command Line Tools (can do it through App store, or by attempting to run "git --version") Can also possibly do:

        xcode-select --install
        WARNING: I AM NOT SURE IF THIS WORKS. HAVEN'T TRIED IT YET.


## Next up... Homebrew stuff:

1. Install Homebrew using the following command: (from http://brew.sh/ )

        /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

2. Install git and git-extras

        brew install git
        brew install git-extras

3. Install git-aware-prompt:

https://github.com/jimeh/git-aware-prompt

4. Edit .gitconfig:

        git config --global user.name "John Doe"
        git config --global user.email johndoe@example.com
        git config --global core.editor code

This should add a .gitconfig file. Edit it and add Aliases so it looks like:

        [user]
            name = Firstname Lastname
            email = email@email.com

        [core]
            editor = code -n -w

        [alias]
            a = !git add . && git status
            c = commit
            cm = commit -m
            d = diff
            g  = log --graph --all --branches --decorate --pretty=format:'[%C(auto)%h%Creset][%C(cyan)%an %ar%Creset]%C(auto)%d%Creset %s %C(auto)%Creset'
            ls = log --stat --all --decorate
            master = checkout master
            puom = pull origin master
            s = status

5. Install all other brews:
        
        brew install node
        brew install mongodb
        brew install tree
        brew install httpie
        brew install heroku
        brew install ruby
        brew install docker
        
6. Install npm (it got kinda installed with Node)

        npm install npm -g

7. (Optional) Install cask. It helps install the software listed above, and more.

        brew tap caskroom/cask

8. (Optional) Use cask to install all/most of the above software.

## Configuring VS Code:

1. Extensions > search & install: 

   * .ejs
   * Angular 1 Javascript and Typescript Snippets
   * Auto Close Tag
   * ExpressSnippet
   * Guides
   * HTML Boilerplate
   * npm Intellisense
   * Open
   * Path Intellisense
   * vscode-icons
   * Python
  
2. Preferences > Color Theme: Monokai
3. Preferences > User Settings: 

        {
           "window.zoomLevel": 0,
           "editor.fontSize": 13,
           "editor.tabSize": 4,
           "editor.insertSpaces": false,

           "files.associations": {
              "*.ejs": "html"
           },
    
           "auto-close-tag.SublimeText3Mode": true
        }

4. Preferences > Keybindings: 

        [
        { 	"key": "cmd+;",
           	"command": "cursorEnd",
           	"when": "editorTextFocus" },

        { 	"key": "shift+cmd+;",
          	"command": "cursorEndSelect",
          	"when": "editorTextFocus" },

        { 	"key": "cmd+enter",
          	"command": "cursorDown",
          	"when": "editorTextFocus" }
        ]

