# Chapter-2 Command-Line Editing _Continued..._

## 🔁 The **_fc_** command

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

🔐 _Escape Sequences in .inputrc_

> Sequence and their Meaning:
>
> - \C- :Control key prefix
> - \M- :Meta (Escape) key prefix
> - \e :Escape character
> - \\\ :Backslash character(\\)
> - \\<"> :Double quote (<">)
> - \\' :Single quote (')

🔄 _Conditional Settings_
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
These variables customize the behavior of shell editing experience. Can set them using the _`set`_ command inside _.inputrc_.
Here are some useful variables and what they do:
| Variable | Description |
| ------------------------ | --------------------------------------------------------------------------------------- |
| `bell-style` | How the terminal signals errors: `audible`, `visible`, or `none`. Default is `audible`. |
| `comment-begin` | The string inserted when using the `insert-comment` command. Default is `#`. |
| `completion-query-items` | Number of possible completions shown before asking confirmation. Default: `100`. |
| `convert-meta` | If `On`, converts 8-bit characters into escaped ASCII. Default: `On`. |
| `disable-completion` | If `On`, disables autocomplete. Default: `Off`. |
| `editing-mode` | Sets editing style: `vi` or `emacs`. Default is `emacs`. |
| `enable-keypad` | Enables keypad for special keys (like arrows). Needed on some systems. Default: `Off`. |
| `expand-tilde` | Enables tilde (`~`) expansion in completions. Default: `Off`. |
| `horizontal-scroll-mode` | If `On`, scrolls horizontally instead of wrapping long lines. Default: `Off`. |
| `input-meta` | If `On`, allows 8-bit input. Synonym for `meta-flag`. Default: `Off`. |
| `keymap` | Sets the keymap: options include `emacs`, `vi`, `vi-insert`, etc. Default: `emacs`. |
| `mark-directories` | If `On`, adds a trailing slash to completed directories. |
| `mark-modified-lines` | If `On`, adds `*` to modified history lines. Default: `Off`. |
| `meta-flag` | Accepts 8-bit input (same as `input-meta`). Default: `Off`. |
| `output-meta` | Displays 8-bit characters directly. Default: `Off`. |
| `show-all-if-ambiguous` | If `On`, lists all matches instead of ringing the bell. Default: `Off`. |
| `visible-stats` | Adds file type characters (like `/`, `*`, etc.) in completion lists. Default: `Off`. |

## 🎛️ Key Bindings Using bind

The _`bind`_ command allows to:

- Try out key bindings temporarily in the shell.
- View, set, or remove key bindings.
- Use the same syntax as _.inputrc_, but quoted on the command line

🔍 Useful bind Options
| Command | Description |
| ---------------------------- | ------------------------------------------------------------- |
| `bind -P` | Prints all current key bindings along with the function name. |
| `bind -l` | Lists all available readline function names. |
| `bind -u function_name` | Unbinds all keys associated with the specified function. |
| `bind -r keyseq` | Unbinds the specific key sequence. |
| `bind -x '"keyseq":command'` | Binds a shell command to a key. |
| `bind -p > .inputrc` | Saves current bindings into a `.inputrc`-compatible format. |
| `bind -f filename` | Reads key bindings from a file (like `.inputrc`). |

### 🧠 Keyboard Habits

✨ Emacs Mode Is Easier for Beginners

- Emacs-mode uses intuitive Control key combinations
- No need to switch between "insert" and "command" modes like in vi
- Simple for small-scale editing

⌨️ Essential Emacs-Style Key Bindings
| Key | Action |
| -------------- | -------------------------------- |
| `CTRL-A` | Move to start of line |
| `CTRL-E` | Move to end of line |
| `CTRL-F` | Move forward (like right arrow) |
| `CTRL-B` | Move backward (like left arrow) |
| `CTRL-D` | Delete character under cursor |
| `CTRL-K` | Delete to end of line |
| `CTRL-P` / `↑` | Previous command |
| `CTRL-N` / `↓` | Next command |
| `CTRL-R` | Search command history |
| `TAB` | Auto-complete filenames/commands |

> Currently using VS Code

- Beginner-friendly and visually intuitive
- Auto-suggestions, syntax highlighting, error underlines
- Easy to edit and save .sh files
- Integrated terminal for running and debugging commands instantly

# 📚 **_Chapter 3 – Customizing Your Environment_**

A shell environment is like your digital workspace.  
Your shell has:

- Files & directories
- Standard input/output
- Commands & tools

> 🧩 _4 Key Customization Features in Bash_
> Features and Purpose
>
> - 🗂️ _Special Files_ : Run at login/logout/startup for setup tasks
> - 🔁 _Aliases_ : Shortcuts for long or repetitive commands
> - ⚙️ _Options_ : Enable or disable shell behaviors
> - 📦 _Variables_ : Store values that affect shell/program behavior

## 1️⃣ Special Files

These are auto-executed scripts Bash reads at specific events:

> Files and When it runs:

- _`.bash_profile`_ : When you log in (for login shells)

After edits we can run the command

```bash
source .bash_profile
```

- 🔎 Bash only reads one of the following at login, in order: - .bash_profile

  - .bash_login
  - .profile  
    </br>

- _`.bashrc`_ : When a new terminal (interactive shell) is opened.

Read every time you open a new terminal, i.e., a subshell by typing bash on command line.

If some commands are set up in _`.bashrc `_ and want them to also run when you log in, then we can call _`.bashrc `_ from _`.bash_profile `_ using source command.

- _`.bash_logout`_ : When you log out

Use it to clean up, log time, or remove some files.
A goodbye message can also be put there by commands when logout. This is an optional file.

## 2️⃣ Aliases

Aliases let you create shortcuts for commands in command line , .bash_profile or .bashrc.

```bash
#Syntax
alias name=command
```

The aliases can be used for poor mneumonics or fix typos.

```bash
# To make meaning of mneumonic command
alias search=grep

# To fix some typos
alias gerp=grep
```

To short the long commands use quotes if multi-word command.

```bash
# Commonly used path in command line
alias cdbash='cd home/Documents/bash'
```

- Special characters cannot be used in alias names.

- Aliases can refer to other aliases.

```bash
#The alias can have another alias
alias printall='pr * | lpr'
alias pa='printall'
```

- It prevents alias with infinite loop.

```bash
#checks if the variable name is present in the value
alias stty='stty -a'
```

- Aliases can be used only for beginning of command string and not in between of command.

```bash
#if use cd and then alias for a pathname
alias video='/home/Desktop/Downloads/bash/video'
cd video
# This will not work
```

- Use quotes to make the value end with blank

```bash
alias cd='cd '
```

- The space in the end allows bash to look for other alias

```bash
cd video
# This will work
```

Some useful commands:

```bash
# To get list of alias
alias

# To get value of specific alias
alias name

# To remove the alias
unalias name
```

## 3️⃣ Options

Shell options control how the Bash shell behaves. These are settings that can be turned on or off to customize the shell environment.

- Enabling or Disabling Options (multiple options can be toggled)

```bash
# Turn ON an option
set -o optionname

# Turn OFF an option
set +o optionname
```

- Some have one-letter short forms

```bash
# Full form
set -o glob

# Short form
set -f
```

> Useful Shell Options:

- _`emacs`_ : Enables emacs-style command-line editing (default ON)

- _`ignoreeof`_ : Prevents logging out with CTRL-D; you must use exit

- _`noclobber`_ : Prevents overwriting existing files using > redirection

- _`noglob`_ : Disables wildcard expansion (\*, ?)

- _`nounset`_ : Errors out if you use an undefined variable

- _`vi`_ : Enables vi-style command-line editing

To check status of all options with their settings

```bash
set -o
```

### 🔎 shopt Command

A built-in as a better way to manage shell behavior.

- Basic Syntax

```bash
shopt [options] [option_names]
```

> Options to shopt:

- _-s_ : Set (enable) the option
- _-u_ : Unset (disable) the option
- _-p_ : Print list of options and their current values
- _-q_ : Return status only, no output
- _-o_ : Work with set -o compatible options

```bash
shopt -p
shopt
```

> Shopt Option names

- _`cdable_vars`_ : If argument to cd is not a directory, check if it's a variable with a directory value
- _`checkhash`_ : Validates commands in the hash table still exist before executing
- _`cmdhist`_ : Saves multiline commands as a single history entry
- _`dotglob`_ : Includes hidden files (those starting with .) in glob patterns like \*
- _`execfail`_ : Prevents shell exit when exec fails (non-interactive shells only)
- _`histappend`_ : Appends command history to file ($HISTFILE) instead of overwriting it
- _`lithist`_ : Stores multiline commands in history with newlines (depends on cmdhist being enabled)
- _`mailwarn`_ : Alerts if mail file was accessed since the last check

## 4️⃣ Shell Variables

Shell variables allow you to customize your environment by storing and using values throughout your session or scripts.

Syntax for defining

```bash
varname=value
```

```bash
# To delete the variable
unset varname

# To check variable value
echo "$varname"
```

- Using double quotes is preferred as it considers whole string as one.

## 🛠️ Built-In Variables

### Editing Mode

These help customize how command history is saved and managed.

- To check max commands stored and max lines in history file

```bash
echo $HISTSIZE #1000
echo $HISTFILESIZE #2000
```

- Can also change the values

```bash
HISTFILESIZE=3000
```

✂️ Reduce Clutter: _`HISTCONTROL`_

Control what goes into your history:

- _`ignorespace`_ : Commands starting with space are ignored.

- _`ignoredups`_ : Ignore duplicates of the last command.

- _`erasedups`_ : Remove all earlier duplicates of the same command.

- _`ignoreboth`_ : Equivalent to ignorespace:ignoredups.

```bash
HISTCONTROL=ignorespace:ignoredups:erasedups
```

🎯 _`HISTIGNORE`_ Patterns for commands to ignore in history

- When don't want commands like _`ls`_ or _`clear`_ to be
  stored in history.

```bash
HISTIGNORE="ls:clear:&"
# use & to ignore the duplicates
```

⏱️ Add Timestamps to History: _`HISTTIMEFORMAT`_
Adds the date and time when each command was run.

```bash
HISTTIMEFORMAT="%Y-%m-%d %H:%M:%S "

# Then run
history
```

📦 _`HISTCMD`_ : Current command number

```bash
echo $HISTCMD
```

- `FCEDIT` : Editor for fc command (default: vi)

### 📬 Mail Variables in Bash (Legacy Feature)

🔸 This is a legacy feature. It's rarely used today and mostly relevant for older UNIX systems or mail-server setups.

🔸 Bash provides _`MAIL`_, _`MAILCHECK`_, and _`MAILPATH`_ to notify users about incoming mail — a useful feature back in the day of system mail. However, this is now not commonly used in modern Linux setups, especially where users rely on external email apps.

### 🖥️ Prompting Variables

Displays useful info like Current user, Directory, Time or date and Command number or history

Helps in scripting and multi-user environments.

Makes the shell more user-friendly and personalized.

🔸*Bash Prompt String Variables*

🔹 _`PS1`_ : Primary prompt strings (default prompt when waiting for user input)

By default, the bash shell uses a prompt defined by the variable PS1.
The default value of PS1 is:

```bash
\s-\v\$
```

- In most modern Linux systems like Ubuntu, the prompt is customized using colors and extra information

```bash
echo $PS1
```

🔹 _`PS2`_ : Secondary prompt String (used when a command is incomplete)

The default value is '>'.

🔹 _`PS3`_ and _`PS4`_ relate to shell programming and debugging.

👉 Common Prompt Escape Sequences:

- \u :Username
- \h : Hostname (short)
- \H : Full hostname
- \w : Current working directory
- \W : Basename of current directory
- \t : Current time (HH:MM:SS)
- \d : Date (Weekday Month Day)
- \\! : History number of the command
- \\# : Command number
- \\$ : $ for normal user, # for root
- \n : Newline
- \\@ : 12-hour time with am/pm
- \A : 24-hour time (HH:MM)  
  and more...

### 📌 Command search _`PATH`_:

- PATH variable helps shell to find the commands entered.
- Every command is actually a file stored somewhere in the system usually under directories
- The shell uses a special environment variable called PATH to know where to search for these executable files.

```bash
echo $PATH
```

- Own scripts can be added in a personal directory and add that directory to your PATH in .bash_profile

✅ Safe Method (Append at End):

```bash
PATH=$PATH:/home/you/bin
```

❌ Risky Method (Prepend)

```bash
PATH=/home/you/bin:$PATH
```

- _`type command`_ will either give the full pathname or the command with its type

```bash
type pwd
```

### 🧠 Command Hashing

Bash creates a hash table to remember the location of commands that are already used, making the repeated command execution much faster.

```bash
# To view hash table
hash
```

- **Hits** = number of times the command has been run in this session.

- Some of the options for the hash are:

```bash
# Force adding a command to the hash
hash command

# Clear the hash table
hash -r

# Remove one command
hash -d command

# Insert command path to hash table
hash -p pathname

# To turn on or off command hashing
set -o hashall #Turn on
set +o hashall #Turn off
```

### 🧭 Directory Search Path and Variables

> What Is _`CDPATH`_ ?
> _`CDPATH`_ is like _`PATH`_ , but for the _`cd`_ command.
> Saves time if you frequently switch between any subfolders.

- If _`CDPATH`_ isn’t set, _`cd`_ only checks the current directory.

```bash
cd dirname
```

- A shorthand feature that allows to use variable names with _`cd`_.

```bash
shopt -s cdable_vars
```

### ➡️ Miscellaneous Variables

These serve as status indicators and for various
other miscellaneous purposes.

📋 Table: Key Miscellaneous Shell Variables

| Variable        | Meaning                                     |
| --------------- | ------------------------------------------- |
| `HOME`          | Your **home directory**                     |
| `SECONDS`       | Time (in seconds) since shell started       |
| `BASH`          | Full path of the Bash binary                |
| `BASH_VERSION`  | Bash version (as a string)                  |
| `BASH_VERSINFO` | Array of version parts (e.g., major, minor) |
| `PWD`           | Present working directory                   |
| `OLDPWD`        | Previous directory (before last `cd`)       |

## 🔁 Customization and Subprocesses

When you enter a command in the terminal, the shell runs it in a subprocess thath has access to only some of your shell's data. What gets passed to subprocesses can be customized.

🔍 Key Question
❓ Which shell variables are known to subprocesses?

✔️ Answer: Only environment variables are automatically inherited that is known to all subprocesses.
❌ Subprocesses can’t modify the processes that created them.

### 🌐 Environment Variables

Environment variables are visible to subprocesses.

- Some built-in variables are: HOME, PATH, MAIL, PWD, TERM, EDITOR

- For text editors to know what kind of terminal you are using.

```bash
echo $TERM
```

🧵 Making a Variable an Environment Variable
There are two ways:

1. Define first, then export

```bash
varname=value
export varname
```

2. Define and export in one line

```bash
export varname=value
```

- Define variable in particular Subprocess

```bash
varname=value command
```

- Mostly _`.bash_profile`_ files include definitions of environment Pvariables

- To see all environment variables and their values

````bash
export
export -p
```bash
````

📋 **Common Standard Environment Variables**

| Variable  | Description                        |
| --------- | ---------------------------------- |
| `COLUMNS` | Width of your terminal (auto-set)  |
| `LINES`   | Height of your terminal (auto-set) |
| `EDITOR`  | Preferred text editor path         |
| `SHELL`   | Path of your login shell           |
| `TERM`    | Type of terminal you're using      |

### Terminal Types

_`TERM`_ is an environment variable that tells programs what kind of terminal you're using.

- Crucial for screen-based programs.

```bash
echo $TERM
```

🧠 Why Is _`TERM`_ Important?

Programs use _`TERM`_ to figure out:

- How to move the cursor
- How to scroll or clear the screen
- How to display colors, bold, or reverse video

If _`TERM`_ is set incorrectly:

- Programs might misbehave (e.g., garbled display)

The _`TERM`_ appear as short character string with lowercase letters filname in _terminfo_ Database

- Located at: /usr/lib/terminfo
- Contains binary files that describe each terminal

- If for some reason screen-based programs behave oddly, it's often because the _`TERM`_ variable isn’t set correctly. Normally, your terminal handles it, but if needed, you can manually check or change it using the _`echo`_ or _`export`_ command.

There are some additional environment variables that help programs work correctly based on your preferences or system setup. For example:

- _`EDITOR`_ tells programs like mail or crontab which text editor to use.

- _`SHELL`_ indicates your login shell, while _`BASH`_ gives the path to the current shell instance.

- _`COLUMNS`_ and _`LINES`_ help screen-based programs format content correctly.

These variables are usually set automatically, but can export the changes in _.bash_profile_ if needed.

### The Environment File

To manage your shell environment, Bash uses two key files:

- _`.bash_profile`_ : Runs only at login. Use it for setting environment variables and export commands.

- _`.bashrc`_ : Runs every time a new shell session starts. This is where we put aliases, functions, and options.  
  This is default environment file of bash.

- If add definitions in _`.bashrc`_ put at end in _`.bash_profile`_:

```bash
source ~/.bashrc
```

## ✅ Customization Hints

Instead of opening a text editor, just use _`echo`_ to append the line:

```bash
echo 'PS1="\u \!--> "' >> ~/.bash_profile
```

- Adds the prompt customization directly to your file.
- Use single quotes and the double right-angle bracket (>>) to avoid overwriting the file.
