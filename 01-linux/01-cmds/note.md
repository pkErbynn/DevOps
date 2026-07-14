
## Linux Commands

General Operations:
- `clear` = Clears the terminal

Directory Operatings:
- `pwd` = Show current directory. Example Output: `/home/pkerbynn` *
- `ls` = List folders and files. Example Output: `Desktop  Downloads  Pictures  Documents`
- `cd [dirname]` = Change directory to [dir]
- `mkdir [dirname]` = Make directory [dirname]
- `cd ..` = Go up a directory

File Operations:
- `touch [filename]` = Create [filename]
- `rm [filename]` = Delete [filename]
- `rm -r [dirname]` = Delete a non-empty directory and all the files in it **
- `rm -d [dirname]` or `rmdir [dirname]` = Delete an empty directory ***

Navigating in the File System:
- `cd usr/local/bin` = Navigate multiple dirs (relative path - relative to current dir). Move to bin directory
- `cd ../..` = Move up 2 hierarchies, so go to 'usr' directory
- `cd /usr` = Alternative to go to 'usr' directly (absolute path)
- `cd [absolute path]` = Move to any location by providing the full path
- `cd /home/pkerbynn` = Go to my home directory (absolute path) ***
- `cd ~` = Shortcut alternative to go to home directory **
- `ls /etc/network` = List folders and files of 'network' directory

More File and Directory Operations
- `mv [filename] [new_filename]` = Rename the file to a new file name
- `cp -r [dirname] [new_dirname]` = Copy dirname to new_dirname recursively meaning including the files ***
- `cp [filename] [new_filename]` = Copy filename to new_filename

Some more useful commands
- `ls -R [dirname]` = Show dirs and files but also sub dirs and files *
- `history` = Gives a list of all past commands typed in the current terminal session *
- `history 20` = Show list of last 20 commands
- `CTRL + r` = Search history ***
- `CTRL + c` = Stop current command
- `CTRL + SHIFT + v` = Paste copied text into terminal
- `ls -a` = See hidden files too
- `cat [filename]` = Display the file content

 
Display OS Information
- `uname -a` = Show system and kernel ***
- `cat /etc/os-release` =  Show OS information ***
- `lscpu` = Display hardware information, e.g. how many CPU you have etc. ***
- `lsmem` = Display memory information ***

Execute commands as superuser
- `sudo [some command]` = Allows regular users to run programs with the security privileges of the superuser or root **
- `su - admin` = Switch from pkerbynn user to admin **

## Pipes & Redirects

### **Pipe & Less:**

Pipe Command:
- `|` = Pipe command = Pipes the output of the previous command as an input to the next command

Less Command:
- `less [filename]` = Displays the contents of a file or a command output, one page at a time. And allows to navigate forward and backward through the file

Different piping examples/use cases:
- `cat /var/log/syslog | less` = Pipes the output of 'syslog' file to less program. **
- `ls /usr/bin | less` = Pipes the output of ls command to less program.
- `history | less` = Pipes the output of history command to less program. **

### **Pipe & Grep:**

Grep Command:
- `grep [pattern]` = Searches for a particular pattern of characters and displays all lines that contain that pattern

More piping examples/use cases:
- `history | grep sudo` = Look for any commands of history commands, which have 'sudo' word in it
- `history | grep "sudo chmod"` ** = Look for any commands of history commands, which have 'sudo chmod' phrase in it
- `history | grep sudo | less` ** = History output will pass output to grep and filter for 'sudo' and this output will again be piped or passed to less program
- `ls /usr/bin/ | grep java` = Filter ls output for java
- `cat Documents/java-app/config.yaml | grep ports` = See all 'ports' occurences in config.yaml file

**Redirects in Linux:**
- `>` = Redirect Operator = Takes the output from the previous command and sends it to a file that you give

Different redirects examples/use cases:
- `history | grep sudo > sudo-commands.txt` = Redirect output into a 'sudo-commands.txt' file
- `cat sudo-commands.txt > sudo-rm-commands.txt` = Redirect output of 'sudo-commands.txt' file into 'sudo-rm-commands.txt' file
- `history | grep rm > sudo-rm-commands.txt` ** = Redirect output of filtered history commands into existing 'sudo-rm-commands.txt' file. Note: Contents of file will be _overwritten_
- `history | grep rm >> sudo-rm-commands.txt` ** = Redirect output of filtered history commands into existing 'sudo-rm-commands.txt' file. Note: Contents of file will be _appended_

</details>
