- [Back to Homepage](/README.md)

# 15 July 2025 Report - Day 51 - Bash Administration and Research Paper 

## Content

Today I read the research paper to understand the gene loss and how to find it:  **"Evidence for the loss of plasminogen receptor KT gene in chicken"**. Then I also continuted to read the research paper of method showing gene loss in mammals. I discussed the paper and methods in the first paper with the PhD student in the lab and also discussed witht the other intern about the further work we need to do.         
I made the notes of chapter-9 and started with chapter-10, Bash administration. The topics I covered are:

1. Installing bash as Standard Shell

2. POSIX Mode

3. Command-Line Options

The commands learnt are:

1. For strict POSIX adherence:
```bash
bash --posix

#or 

set -o posix
```

2. `-c string` option: Execute command from string and after that are considered arguments start with `$0`
```bash
bash -c 'string' $0 $1
```

3. `-i` option: For interactive shell
```bash
bash -i
```

4. `-s` option: To read from stdin
```bash
command | bash -s
```

5. `-v` option: To print shell lines as read
```bash
bash -v command
```