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
#### Useful locations
* `/usr/bin` - the location of most command executables
* `/dev/null` - the trash
* `.ssh` - storage for secure keys
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
* You can create variables by putting the `$` sign before it:
```bash
 newvar = $'this is a new var'
```
* You can create global variables with:
```bash
 export newvar = 'this is a new var'
```
* Note that in the `history` you can run any command again by just typing:
```bash
 ![line number of command]
```
* You can also fun the last command run with:
```bash
 !!
```
* `[cmd] -[option] [target] &` - runs a process but runs it in the background
* `[cmd] -[option] [target] && [cmd] -[option] [target]` - if first commmand works well then run second command, if first command fails then the second command will not run
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
* `grep [pattern being searched for] [thing to be searched]` - search thing for certain pattern
*  `tail -f [filename]` - keep a file open and print it to the terminal - every time the file changes then change the terminal
*  `tail -n [number of lines to print] [filename]` - just print the last n lines of a file
*  `head -n [number of lines to print] [filename]` - just print the first n lines of a file
* `history` - list the history of commands in to the terminal
* `whoami` - outputs username
* `curl [IP address]` - send a HTTP request
* `shuf -n [number of lines to output]` - shuffle and return a sample f n lines of a file
#### Shell piping
Essentially this is about input, some processing and then output.
A standard piping line of code might look something like this:
```bash
 [cmd] -[option] [target] | [cmd] -[option] > [output filename]
```
##### Examples
* Output a variable to a file:
```bash
 echo "$variable" > intothisfile.txt
```
* Sort
```bash
 cat intothisfile.txt | sort
```
* Search
```bash
 cat intothisfile.txt | grep 'thingtobefound'
```
* Appending to a file
```bash
 echo "something" >> intothisfile.txt
```
* Throw away errors
```bash
 ls -l /wrong/path >> /dev/null
```
* Output a scrollable history of commands
```bash
 history | less
```
* Search for a past command
```bash
 history | grep [thing to be searched for]
```
#### Using SSH
SSH enables you to shell into a server to run commands or even remotely run commands across machines. GitHub also relies on SSH. You can also forward a port on a remote machine to your own port.
* `ssh-keygen -t nameofkey` - create a public and a private key that can be used for ssh operations, the public key can be given to a third party for authentication
* To ssh into a machine:
 1. Add the public key into the `known_hosts` or `authorised_keys` file in the `.ssh` folder of the host machine
 2. On the client machine type the command:
 ```bash
  ssh -v username@[IP address of host]
 ```
* port forwarding - you can forward a port from a remote server to a local port using:
```bash
 ssh -N -L 8080:[local.machine.ip.address]:8080 [user@ip.address.of.host]
```
This enables you to communicate with that server via a web browser.
#### Useful tools
* `htop` - advanced and pretty version of `top`
* `oh-my-zsh` - posh terminal
### Configuring the shell environment
#### Shell config files
Shell config files are a form of automation and may contain:
* alias - shortcuts for lines of code
* source - the bashrc file may source other custom command files
* functions - bash custom functions
* file system mounts
#### bashrc
#### Configuring third party tools
### Useful notes
* In vim, you can use the command `:set paste` to paste from your clipboard
* In vim, `:wq` writes and then quits
