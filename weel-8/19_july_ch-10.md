- [Back to Homepage](/README.md)

# 19 July 2025 Report - Day 55 - Bash Administration

## Content

Today I and the intern working on the project discussed about the prooblem and tried to solve together. We found the paralog of gene and found theamino acid sequence of epitope and learnt about the LINE and SINE repeats. Then I completed the chapter-10 with the topics:

1. System Security Features: Restriced Shell

2. A system Break-in scenario: suid script

3. Privileged Mode

Some commands learnt are:
1. To delete/add built-in commands
```bash
enable -f
enable -d
```

2. Turn off restricted mode
```bash
set +r
```

3. *suid* script for `grep`, create Trojan Horse
```bash
cp /bin/bash filename
chown root filename
chmod 4755 filename
/bin/grep "$@"
rm ~/bin/grep
```

4. To enable privileged mode
```bash
set -o privilegded
# or
set +p
```

