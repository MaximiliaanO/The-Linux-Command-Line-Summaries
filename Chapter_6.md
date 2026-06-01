# Chapter 6: redirection

## Programs used: 

| Program | Description                                                      |
|---------|------------------------------------------------------------------|
| cat     | concatenate files and print to standard output                   |
| sort    | sort lines of text                                               |
| uniq    | report or omit repeated lines                                    |
| grep    | print lines matching a pattern                                   |
| wc      | Print newline, word and byte counts for each file                |
| head    | output the first part of a file                                  |
| tail    | output the last part of a file                                   |
| tee     | read from standard input and write to standard ooutput and files |

---

## Redirection operators:

| Operator             | Description                                                                            |
|----------------------|----------------------------------------------------------------------------------------|
| >                    | redirect standard ouput to a file (will overwrite existing file)                       |
| >>                   | append standard ouput to a file                                                        |
| 2>                   | redirect standard error to a file                                                      |
| > filename 2>&1      | redirect standard output and standard error to the same file                           |
| &>                   | redirect standard output and standard error to the same file (overwrite)               |
| &>>                  | redirect standard output, standard error and append to a file                          |
| command 2> /dev/null | disposed output and does nothing with the output (bit bucket)                          |
| |                    | pipeline operator this "pipes" the standard ouput of one command into the next command |

## Examples:

```
merging multiple files:
movie.mpeg.001 movie.mpeg.002 ... movie.mpeg.099

cat movie.mpeg.0* > movie.mpeg
```

```
ls /bin /usr/bin | sort | less |
```

```
ls /bin /usr/bin | sort | uniq | less |
```

```
ls | grep Documents |
```



