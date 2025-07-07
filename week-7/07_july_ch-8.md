- [Back to Homepage](/README.md)

# 07 July 2025 Report - Day 43 - Process Handling

## Content

Today I learnt some concepts of bash scripting and practiced how we run them with different commands. Also completed the chapter-8 with the tasks and some of the exercises mentioned and made the notes. The topics covered are:

1. Coroutines: Along with advantages and disadvantages      
- When two or more processes explicitly run at the same time within a script.

2. wait command     
- To ensure the parent shell/script doesn't exit until background jobs finish.

3. Parallelization      
- When use multiple CPUs, can distribute process into coroutines.

4. Subshells : Subshell Inheritence

5. Nested Subshells         
- Use `( )` to run any block in a subshell

6. Process Substitution and cmp command 
- To use the output or input of a command as if it were a file.

The commands learnt are:

1. `wait` command: To wait until the jobs are completed before script
```bash
program1 &
program2
wait
```

2. To `wait` for specific pID:
```bash
wait <pid>   # Wait for a specific background process
```

3. Nested Subshells
```bash
( 
  #commands, loops or functions...
)
```

4. Process Substitution: To put outputs of two programs into cmp input via named pipes.
`cmp` command: compares the results without writing files to disk
```bash
cmp <(prog1) <(prog2)
```