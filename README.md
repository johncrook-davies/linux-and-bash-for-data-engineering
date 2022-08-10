# Linux and Bash for data engineering - notes
## Bash scripts
### Core concepts
* `shebang` line - tels script what language to use to execute the script eg. invoke bash or invoke python
* `chmod` - makes script executable, it changes characteristics of the script to give it an executable flag
* config files and variables
  - `.bashrc` - configure so that every new invokation of a terminal will run what is inside the bashrc - this enables building of alias' that automate tasks
  - `.profie` - good for setup
* searching for files -
  - `Find` - performs an exhaustive search of a file system
  - `Locate` - searches metadata only and is much quicker
### Using Linux
#### Intro
* Ubuntu and Red Hat are the most popular forms of Linux
* Easiest way to run linux is with docker with command
```bash
  docker run -it ubuntu
```
#### Github codespaces
* Cloudspaces enables you to edit and run in the cloud rather than cloning locally - it is essentially an IDE
#### Useful linux commands
* A useful command when firing up a codespace is
```bash
  uname -a
```
which gives all the information about the operating system
* `pwd` - shows the directory that you're in at the moment
* `cat [filename]` - prints the file to the terminal
* `vim [filename]` - opens the vim editor
* `ls -l [filename]` - lists file permissions for root user, group and user
* `chmd +x [filename]` - makes file executable globally to all users
* `[filename]` - execute an executable file
#### Useful tools
* `htop` - advanced and pretty version of `top`
* `oh-my-zsh` - posh terminal
