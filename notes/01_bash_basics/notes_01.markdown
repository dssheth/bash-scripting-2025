# 📚 ***Bash Basics: "Learning the Bash Shell (3rd Edition)"***
## 🚀 Introduction
- **UNIX OS** : Created in 1970s
- **Shell** : A User Interface to UNIX OS. It tranlates the user's commands to OS instructions and then give output.

![user shell and os relation](user_shell_os.png)

- **Bash, or Bourne Again Shell**: A Character-based user interface. It is a powerful command-line interface for UNIX and Linux systems, allowing you to interact with your OS efficiently. 

- Bash combines features from older shells like the Bourne shell, C shell, and Korn shell, making it versatile for both interactive use and scripting.


### 📜 History of Bash

- **Bourne Shell**: First major shell started in 1979 known as ***`sh`*** on system.

- **C Shell**: Known as ***`csh`***.  The commands are similar to the C Programming

- **Korn Shell**: A Commercial version that have additional features along with best features of Bourne and C Shell, known as ***`ksh`***.

- **Bourne Again Shell**: Called ***`bash`*** started in 1988. It has all UNIX utilities that are freely usable.
  
  It is the standard shell included with Linux,free UNIX OS, and Apple's Mac OS X.

### 🌟 Features of Bash 

- **Command-line editing**: Modify commands easily using familiar editing modes.

- **History mechanism**: Recall and reuse previous commands.
- **Job control**: Run and manage multiple commands  simultaneously.
- **Scripting**: Automate repetitive tasks with scripts.
- **Built-in commands**: Access a wide range of tools for file and text manipulation.

Let's get started with using Bash in your terminal.

## 🖥️ Getting Started with Bash

### 🔑 Accessing Bash

To begin, open a terminal on your system:

Check if you're using Bash by running:

```bash
echo $SHELL
```

This should display `/bin/bash` or a similar path, confirming Bash is your shell.

To exit and end the session in terminal press **`CTRL+D`** or type:

```bash
exit
```

### 📝 Basic Command Structure

Bash commands are text lines executed when you press Enter. A command typically includes:

- **Command name**: The program or action (e.g., `ls`). This is the first word.
- **Options**: Flags that modify behavior (e.g., `-l` for long listing). This gives command a specific information to work.
- **Arguments** or **Parameters**: Additional inputs like file or directory names (e.g., `/home`).

Example:

```bash
ls -l /home
```

This lists the contents of the `/home` directory in a detailed format.

**Tip**: Press the Tab key to auto-complete commands, filenames, or directories, saving time and reducing errors.

### 📁 Files and Directories

There are 3 types of file:
- **Regular Files** or **Text Files**: These contain human-readable content such as text, source code, or configuration data.

- **Executable Files** or **Programs**: These are files you can run as programs. Some are binary executables (compiled programs), others are scripts (like shell scripts), that are text files the shell interprets.

- **Directories**: Directories are containers that hold other files or directories (called subdirectories). They are essential for organizing files in a hierarchical structure called tree.

Bash operates within a hierarchical file system, starting from the root directory (`/`) to the file name. The pathname can be absolute or relative. The working directory is set to be home initially. Key commands for navigation include:

- **`pwd`**: Shows your current working directory.

  ```bash
  pwd
  ```

- **`cd [directory]`**: Changes to the specified directory.

  ```bash
  cd /home/user
  ```

- **`ls [options] [directory]`**: Lists directory contents.

  ```bash
  # Includes hidden files
  ls -a  
  ```


**Visual Aid**:

![File System Hierarchy](image.png)

*A diagram of the UNIX file system hierarchy, showing the root and common directories.*


### ~ Tilde Notation

The tilde (`~`) is a shortcut for your home directory. For example:

```bash
# Go to home directory
cd ~ 

# List files in Downloads
ls ~/Downloads 
```

### 🔍 Filenames, Wildcards, and Pathname Expansion

**Wildcards** are special characters that let you match multiple filenames, making commands more flexible.


- `*`: Matches any string of characters.

  ```bash
  # Lists all .txt files

  ls *.txt  
  ```

- `?`: Matches any single character.

  ```bash
  # Matches file1.txt, fileA.txt, etc.

  ls file?.txt 
  ```

- `[set]`: Matches any single character in the set.

  ```bash
  # Matches file1.txt, file2.txt, file3.txt

  ls file[123].txt  
  ```
- `[!set]`: Matches any single character not in the set.

  ```bash
  # Matches file1.txt, file2.txt, file3.txt

  ls file[123].txt  
  ```
The process of matching expressions containing
wildcards to filenames is called **wildcard expansion** or
**globbing**.

**Tip**: Be cautious with wildcards in commands that  can affect multiple files. Always verify before running destructive commands.

**Pathname Expansion**:
Bash expands wildcards into pathname before executing the command, a process called pathname expansion. For example:

```bash
# To list all files in the directories /usr
ls /usr*
```

### Brace Expansion

Brace expansion generates multiple strings from a pattern, useful for creating lists or filenames.

```bash
echo {a,b,c}.txt  
# Outputs: a.txt b.txt c.txt

echo {1..5}  
# Outputs: 1 2 3 4 5

echo ki{n,t,ng}s
# Outputs: kins kits kings
```

**Tip**: bash requires at least one unquoted comma to perform an
expansion; otherwise, the word is left unchanged.   

## ↔️ Input and Output 
📌 Key Ideas of UNIX I/O scheme:

- **Everything is a file**: Not just text files — hardware devices, directories, and programs too.

- **Data flows in character** (byte) streams, not blocks or cards.
  
  These ideas make UNIX systems easier and more flexible for programming and automation.

## Standard I/O
UNIX program has way of
accepting input called *standard input*,producing output called *standard output*, and a single
way of producing error messages called *standard error*.

UNIX utility programs
are meant to perform a
specific type of filtering operation on input text.

> **Utility	and Purpose:**
- `cat`:	Copies input to output
- `grep`:	Searches for text patterns
- `sort`: Sorts lines of text
- `cut`:	Extracts specific fields or columns
- `tr`: Translates or deletes characters
- `sed`: Edits text using rules

```bash
#Using cat to print the input given as output

cat 
Hello World
# Output: Hello World
```
Use CTRL+D to stop the process in next line after pressing ENTER.


### -> I/O Redirection
  Bash allows you to redirect input and output to control data flow.

### Redirection Operators

- `>`: Redirects standard output (stdout) to a file, overwriting it.

  ```bash
  echo "Hello" > hello.txt
  ```

- `<`: Redirects standard input (stdin) from a file.

  ```bash
  sort < names.txt
  ``` 

**Tip**: To redirect both stdout and stdin to a file, use:

```bash
cat < hello.txt > names.txt
```

### Pipelines

Pipelines connect the output of one command to the input of another using the pipe operator (`|`).

```bash
# Lists only .txt files
ls | grep .txt  

#View file listing one page at a time:
ls -l | more

#Sort numbers and print:
sort < numbers |more
```

## ⏳ Background Jobs

Background jobs let you run commands without tying up your terminal, freeing you to perform other tasks.

### Running Background Jobs

Add an ampersand (`&`) to run a command in the background:

```bash
sleep 10 &  # Runs for 10 seconds in the background
```

### Job Control Commands

- `jobs`: Lists all background jobs.
- `fg [job_id]`: Brings a job to the foreground.
- `bg [job_id]`: Resumes a paused job in the background.
- `CTRL-Z`: Pauses a running foreground job.

Example:

```bash
sleep 10 &
jobs
fg %1  # Brings job 1 to foreground
```

### Background I/O

Background jobs are connected to the terminal by default. If they try to read input, it may cause clutter on the screen. To avoid this, redirect I/O:

```bash
command input1.txt input2.txt > output.txt &
```

### ⚙️ Background Jobs and Priorities

- Every job has a priority (higher number = lower priority).

Use nice to lower a job’s priority:
```bash
nice command
```

## 🔣 Special Characters, Quoting, and Escaping

Special characters like `*`, `|`, and spaces have specific meanings in Bash. To use them literally, you need to quote or escape them.

### Quoting :

- **Single Quotes (`'`)**: Preserve all characters literally.

```bash
echo 'Hello $USER' 
# Outputs: Hello $USER
```

- **Double Quotes (`"`)**: Allow variable and command substitution.

```bash
echo "Hello $USER"  
# Outputs: Hello your_username
```

### Backslash-Escaping

Use a backslash (`\`) before to escape a single special character meaning:

```bash
echo 5 \* 3 \> 15 is a invalid inequality.
# Outputs: 5 * 3 > 15 is a invalid inequality.
```
- To use literal backslash
```bash
'\' #surround with quotes
\\  #backslash it
```
**Quoting Quotation Marks**   
- To include double quotes inside a string, escape them using a backslash (\\):
```bash
echo \"3 \* 3 \> 15\" is a invalid inequality.
# Output: "3 * 3 > 15" is a invalid inequality.
```
- Escape Single quotes in single quoted Strings
```bash
# Use backslash if no other special character
echo Hello everyone it\'s my Birthday 

# Close and Reopen Quotes:
echo 'Hello everyone it'\''s my Birthday'
```

- Quoting special characters:
  
```bash
find [path] [string]
# Searches for filename starting from the current directory (.)
find . -name filename
# Quote the filename to match the string in each directory.
find . -name `*.c'
```

### Continuing Lines

Continue long commands across multiple lines using a backslash or unclosed quotes:

```bash
echo "This is a \
long string"

echo 'This is a
long string'
# Outputs: This is a long string
```

### 🎛️ Control Keys

Control keys perform special actions:

- **CTRL-C**: Interrupt a running command.
- **CTRL-D**: Signal end-of-file (exits the shell).
- **CTRL-Z**: Pause a foreground job.
- **CTRL-L**: Clear the terminal screen.
- **CTRL-\\**: Kills the command immediately.
- **CTRL-S**: Freezes the terminal screen.
- **CTRL-Q**: Unfreezes the terminal screen by CTRL-S.
- **CTRL-?**: Erase the last character, same as DEL
- **CTRL-U**: Erase the entire line
- **CTRL-M**: Same as ENTER or RETURN

### ℹ️ Help Command

Get information on built-in commands:

```bash
help cd
```
For external commands or Unix/Linux commands:

```bash
ls --help
```
### 🔧 Other Useful Commands

- **`find`**: Search for files matching a pattern.

  ```bash
  find /path -name "*.txt"
  ```

- **`stty`**: View or modify terminal settings.

  ```bash
  stty -a
  ```


## ✍️ Command-Line Editing and History

Bash enhances productivity with command-line editing and history features.

### Editing Modes

Bash defaults to **emacs mode** for editing commands but can switch to **vi mode**:

```bash
set -o vi  # Switch to vi mode
set -o emacs  # Switch back to emacs mode
```

Common emacs key bindings:
- **CTRL-A**: Move to the beginning of the line.
- **CTRL-E**: Move to the end of the line.
- **CTRL-W**: Delete the word before the cursor.
- **CTRL-U**: Delete from cursor to the beginning.
- **CTRL-K**: Delete from cursor to the end.

### History List

Bash saves your commands in a history list, accessible via:

- **Up/Down arrows**: Navigate previous/next commands.
- **`history`**: Display the command history.
- **`!!`**: Repeat the last command.
- **`!n`**: Run command number `n` from history.
- **`!?string`**: Run the most recent command containing `string`.

Example:

```bash
ls
# Press Up arrow to recall ls, edit, and run
```

**Tip**: Use `CTRL-R` to search history interactively. Type part of a command, and press `CTRL-R` to cycle through matches.


- **`.bash_history`**: File storing command history.

- Show the history file path
```bash
echo $HISTFILE 
``` 

## 🔁 The ***fc*** command
The fc lets you edit and re-run a previous command using your preferred text editor.'

```bash
# To open the last command:
fc

# To open specific command number:
fc 10
```
- We use -l with fc command to list the previous commands.
```bash
# To list the last 16 commands:
fc -l

# To list history commands without numbers:
fc -ln

# To list history list from specific command number or a character in commands:
fc -l 15 
fc -l l

# To list history list in specific range command numbers or characters:
fc -l 10 15
fc -l c h
fc -l c 20
```

- To edit commands using different editor
```bash
fc -e [Editor]
```
fc runs the command after editing automatically. Thus, need to be careful to avoid dangerous in scripts. 
- The safer way is to redirect the history commands in a file and then edit and execute when ready.

```bash
fc -ln 5 > lastcommands
vi lastcommands
source lastcommands
```
- The fc with -s reruns the previous commands if no other arguments given. The command can be modified if required, along with string search.

```bash
#Rerun previous command
fc -s

# Rerun with editing with string search
cs /home
fs -s cs=cd cs
```
## 🧠 Readline 

📚 **What Is Readline?**
- A GNU library used by Bash and other text-based applications.
- Supports Emacs and Vi modes.
- Standardizes editing behavior across different programs.
- Allows user customization through configuration files.

Bash uses the Readline library to handle command-line editing. This powerful library enables text manipulation, key bindings, and custom editing behavior, giving Bash its editing capabilities.

### ⚙️ Readline Startup File – .inputrc

When bash starts up, it reads the startup file and any settings there come into effect. 

The Readline library can be customized using a startup file called .inputrc located in your home directory:

```bash
~/.inputrc
```
- Each line binds a key to a function or macro.

🎯 **Binding Keys**

```bash
# Example: Binding CTRL-T
Control-t: end-of-line

#Or using escape sequence:
"\C-t": end-of-line


## RESULT: This makes CTRL-T move the cursor to the end of the line.
```
🎯 **Binding Macros**
A macro is simply a sequence of keystrokes inside single or double quotes.

```bash
# Example: Binding CTRL-T with some text
"\C-t": "Curiouser and curiouser!"
```
🔐 *Escape Sequences in .inputrc*
> Sequence	and their Meaning:
> - \C-	:Control key prefix
> - \M-	:Meta (Escape) key prefix
> - \e	:Escape character
> - \\\	:Backslash character(\\)
> - \\<">	:Double quote (<">)
> - \\'	:Single quote (')

🔄 *Conditional Settings*
You can write conditionals in .inputrc using:
```bash
$if
$else 
$endif
```
- Examples:
```bash
# Only apply in Emacs mode
$if mode=emacs
"\C-t": "Curiouser and curiouser!"
$endif

# Terminal-specific key binding
$if term=xterm-256color
"\e[11~": beginning-of-line
$endif

# Bash-specific bindings
$if bash
"\C-x": kill-whole-line
$endif

# To test for bash specifics, put this in .inputrc    
$if bash
```
**📋 Readline Variables**
Here are some useful variables and what they do:
