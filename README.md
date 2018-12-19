# Kenworthe's guide for setting up a new workstation.

This guide will go over which software & tools to install, setting up .bash_profile, git (and git-extras), nvm, python/pipenv, and whatever else.


## Software to download and install: 

### Programming: 

#### Editors / IDEs: 
* VS Code
* IntelliJ / WebStorm / PyCharm / RubyMine
* Beyond Compare 4

#### Terminal tools: 
* iTerm2
* nano

#### DB Tools:
* Robomongo
* DB Visualizer

#### Other: 
* Docker
* Java SE

### Browsers: 
* Chrome
  * **Extensions:**
    * uBlock Origin
    * EditThisCookie
    * OneTab
    * JSON Formatter
  * **Optional extensions:**
    * Reddit Enhancement Suite
    * Momentum
    * Mercury Reader
* Firefox
* Postman
* Sip color picker (no longer available for free)


### Communications: 
* Slack
* Discord
* Skype


### Productivity: 
* Flux
* Office 365
* Google Drive
* Better Touch Tool (not free)


### Media: 
* Spotify
* VLC Player
* Winamp
* Gimp (free version of Photoshop)

### Other: 
* smcFanControl
* uTorrent
* Steam


## Pre-setup:

1. Import my bash appearance settings. (See files in this repo.)
1. Create .bash_profile and .bashrc in root directory. 

        cd ~
        touch .bash_profile
        touch .bashrc

2. Copy .bash_profile (in this repo) to yours.
        
3. Copy .bashrc (in this repo) to yours.

4. check $PATH by doing: 

        echo $PATH

    It should be:

        /usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin

    IF it does not reflect the same as above, edit it in .bash_profile (See the commented out line).

5. install Command Line Tools (can do it through App store, or by attempting to run "git --version") Can also possibly do:

        xcode-select --install

    ^ WARNING: I am not totally sure if above command will always work.


## Next up... Homebrew stuff:

1. Install Homebrew using the following command (from http://brew.sh/) :

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

    This should add a .gitconfig file. Edit it and add Aliases so it looks like (or copy from this repo):

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

5. Install all other brews (there's more than below listed):
        
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
   * Bookmarks
   * ExpressSnippet
   * ESLint (or jshint)
   * Guides
   * HTML Boilerplate
   * npm Intellisense
   * Open
   * Path Intellisense
   * vscode-icons
   * Python
   * XML Tools
  
2. Preferences > Color Theme: `Monokai`
    (Also included in this repo just in case.)

3. Preferences > User Settings: 
    (See `vscode-settings/settings.json` file in repo)

4. Preferences > Keybindings:   
    (See `vscode-settings/keybindings.json` file in repo)


## Other resources: 

- [Some code bootcamp guide to setting up a student laptop](https://github.com/ATL-WDI-Curriculum/student-laptop-requirements-and-setup)
- [Blog post from TaniaRascia which has some nice scripts](https://www.taniarascia.com/setting-up-a-brand-new-mac-for-development/ ) 
- [Creating an access token to access GitHub when 2FA is enabled](https://help.github.com/articles/creating-an-access-token-for-command-line-use/)