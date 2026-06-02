# Chapter 17: Searching for files

## Chapter 17 application:

### Counting LoC:

Finds all .ts and .tsx files (excluding node_modules), counts the lines in each file, and outputs the total number of lines across all matching files.

```
find . \
  -path "./node_modules" -prune \
  -o \( -type f -name '*.ts' -print \) \
  -o \( -type f -name '*.tsx' -print \) |
xargs wc -l |
tail -1
```

Let's dissect this properly:


| Command / Expression                 | Explanation                                                                                                                                                                                     |
| ------------------------------------ | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `find .`                             | Start searching from the current working directory (`.`). The `.` could be omitted if the current directory is implied.                                                                         |
| `-path "./node_modules" -prune`      | Traverse all directories but exclude the `./node_modules` directory and everything beneath it.                                                                                                  |
| `-o`                                 | Logical **OR** operator. If the preceding expression is false, evaluate the next expression.                                                                                                    |
| `\( -type f -name '*.ts' -print \)`  | Grouped expression (`\(` and `\)` escape the parentheses). Search for files (`-type f`) whose names end with `.ts` (`*` is a wildcard), and print the matching file paths.                      |
| `-o`                                 | Logical **OR** operator.                                                                                                                                                                        |
| `\( -type f -name '*.tsx' -print \)` | Grouped expression. Search for files (`-type f`) whose names end with `.tsx`, and print the matching file paths.                                                                                |
| `\|`                                 | Pipeline operator. Redirects the standard output of the command on the left to the standard input of the command on the right.                                                                  |
| `xargs wc -l`                        | `xargs` reads file paths from standard input and converts them into command-line arguments for `wc -l`. The `wc -l` command counts the number of lines in each file and produces a total count. |
| `\|`                                 | Pipeline operator. Passes the output of `wc -l` to the next command.                                                                                                                            |
| `tail -1`                            | Prints only the last line of the output. Since `wc -l` includes a final `total` line, `tail -1` returns just that total count.                                                                  |
