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
* The core structure of commands is:
```bash
 [cmd] -[option] [target]
```
* Most commands are located in `/usr/bin`
* see all the available commands in `/usr/bin` with the command:
```bash
 ls -l /usr/bin
```
* A useful command when firing up a codespace is
```bash
  uname -a
```
which gives all the information about the operating system
* `[Ctrl] + [z]` - stops a process rather than killing it
* `fg [process id or script name]` - resumes a stopped process or returns it to the foreground
* `jobs` - lists jobs
* `[cmd] -[option] [target] &` - runs a process but runs it in the background
* `[cmd] -[option] [target] && [cmd] -[option] [target]` - if first commmand works well then run second command
* `pwd` - shows the directory that you're in at the moment
* `cat [filename]` - prints the file to the terminal
* `less [filename]` - prints the file to the terminal and paginates
* `wc -l [filename]` - counts lines of file
* `vim [filename]` - opens the vim editor
* `ls -l [filename]` - lists file permissions for root user, group and user
* `chmd +x [filename]` - makes file executable globally to all users
* `[filename]` - execute an executable file
* `cal` - gives calendar day
* `date` - gives time and date
* `which [cmd]` - shows where command executable is located
* `df -h` - shows disk usage in human readable format
* `du -sh [filepash]/*` - shows disk useage of all files in a folder
* `top` - shows what's happening on the machine
* `ls -lah` - prints a summar of files, sizes, permissions and modified dates
* `mv [current location] [desired destination]` - can move and rename files
* `mkdir -p [long file path]` - creates multiple files

#### Useful tools
* `htop` - advanced and pretty version of `top`
* `oh-my-zsh` - posh terminal
