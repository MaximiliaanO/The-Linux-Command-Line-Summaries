# Chapter 7: seeing the world as the shell sees it

**Commands:**

| Command | Description            |
|---------|------------------------|
| echo    | Display a line of text |



## Pathname Expansion

Wildcards can be used to expand pathnames, i.e. ```echo D*``` will display all the files and directories in the current working directory starting with a capital D. The * is used to match anything after the D.

The following will display all pathnames ending with a s character ```echo *s```.

Or the POSIX character classes can be used: ```echo [[:upper:]]*``` matches anything that starts with a capital letter.

## Arithmetic Expansion

Arithmetic expansion is used in the following form ```$((expression))``` for example:

```
[max@pop-os]$ echo #((2 + 2))
4
```

## Brace expansion

Brace expansions can be used to create multiple text strings from a pattern containing braces like so:

```
[max@pop-os]$ echo Front-{A,B,C}-Back
Front-A-Back Front-B-Back Front-C-Back
```

You can also do a range like so:
```
max@pop-os$ echo {001..020}
001 002 003 004 005 006 007 008 009 010 011 012 013 014 015 016 017 018 019 020
```

Brace expansions can also be nested:
```
max@pop-os$ echo a{A{1,2},B{3,4}}b
aA1b aA2b aB3b aB4b
```
A great use case is to create folders this way:
```
max@pop-os$ mkdir Photos
max@pop-os$ cd Photos
max@pop-os$ mkdir {2017..2026}-{01..12}
```

## Command substitution

Allows us to use the output of a command as an expansion.

```
max@pop-os:~/Coding/the_linux_command_line$ echo $(ls)
Chapter_17.md Chapter_1.md Chapter_2.md Chapter_4.md Chapter_5.md Chapter_6.md Chapter_7.md chapter_9.md README.md

max@pop-os:~/Coding/the_linux_command_line$ ls -l $(which cp)
-rwxr-xr-x 1 root root 141832 Jan 23 11:51 /usr/bin/cp
```

In the second example piping doens't work because the ls program doesn't accept standard input. Thus command subsitution is a great way to achieve the goal.
