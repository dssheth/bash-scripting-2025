- [Back to Homepage](/README.md)

# 04 July 2025 Report - Day 40 - Process Handling

## Content

Today I made the notes of chapter-7 for the video of week. Today I explored different bash commands and practiced the examples as well. Started with chapter-8 Process Handling and these are some of the concepts covered:

1. Process IDs and Job Numbers  
   All process are given number when created called Process IDs.  
   The command line process from shell is called job and the number given to it is Job Number.

2. Job Control : Foreground and background  
   Use job numbers to do job control and bring the jobs forward or send at background with the commands.

3. Suspending a Job

Some of the commands learnt are:

1. To run job in background

```bash
command arg &
```

2. To see different jobs running (in background)

```bash
jobs
```

3. To bring the recent background activity to foreground

```bash
fg
```

4. To bring the background command foreground that is not recent

```bash
fg %[Job Number]

fg processID
```

5. To list all process ID

```bash
jobs -l
```

6. To execute the command

```bash
jobs -x %N
```

7. To start a background process agin after stopped

```bash
^Z bg
```
