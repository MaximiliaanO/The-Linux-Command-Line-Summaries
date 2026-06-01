# Chapter 4: Manipulating files and directories

## Wildcards

| Wildcard      | Meaning                                                                 |
|---------------|-------------------------------------------------------------------------|
| *             | Matches any characters                                                  |
| ?             | Matches any single character                                            |
| [characters]  | Matches any character that is a member of the set characters            |
| [!characters] | Matches any character that is not a member of the set characters        |
| [[:class:]]   | Matches any character that is a member of the specified character class |

#### Commenly Used Character Classes:

| Character class | Meaning                            |
|-----------------|------------------------------------|
| [:alnum:]       | Matches any alphanumeric character |
| [:alpha:]       | Matches any alphabetic character   |
| [:digit:]       | Matches any numeral                |
| [:lower:]       | Matches any lowercase letter       |
| [:upper:]       | Matches any uppercase letter       |

#### Exmaples

| Pattern                | Matches                                                                    |
|------------------------|----------------------------------------------------------------------------|
| *                      | All files                                                                  |
| g*                     | Any file beginning with g                                                  |
| b*.txt                 | Any file beginning with b followed by any characthers and enxing with .txt |
| Data???                | Any file beginning with Data followed by exactly three characters          |
| [abc]*                 | Anye file beginning with either an a, b or c                               |
| BACKUP.[0-9][0-9][0-9] | Any file gebinning with BACKUP. folloed by exactly three numerals          |
| [:upper:]*             | Any file beginning with an uppercaseletter                                 |
| [![:digit:]]           | Any file not beginning with a numeral                                      |
| *[[:lower:]123]        | Any file ending with a lowercase letter or the numerals 1,2 or 3           |

## cp -Copy Files and Directories

Usage

``` 
cp item2 item2
```
Copies the single file or directory item1 to the file or directory item2

```
cp item... directory
```
Copies one or more items to the specified directory.

| Option            | Meaning                                                                    |
|-------------------|----------------------------------------------------------------------------|
| -a, --archive     | Copy the files and dir and all their attributes including file permissions |
| -i, --interactive | Before overwriting a file prompt the user                                  |
| -r, --recursive   | Recursively copy directories an their contents                             |
| -u, --update      | Only copy files that didn't exist or had newer versions                    |
| -v, --verbose     | Display informative messages as the copy is performed                      |

## Move (mv)

Usage:
```
mv item... directory
```

| Option            | Meaning                                                 |
|-------------------|---------------------------------------------------------|
| -i, --interactive | Before overwriting a file prompt the user               |
| -u, --update      | Only copy files that didn't exist or had newer versions |
| -v, --verbose     | Display informative messages as the copy is performed   |

## Remove (rm)

The rm command is used to remove files and dirs.
```
rm item...
```

| Option            | Meaning                                                                              |
|-------------------|--------------------------------------------------------------------------------------|
| -i, --interactive | Before overwriting a file prompt the user                                            |
| -r, --recursive   | Recursively delete directories an their contents                                     |
| -f, --force       | Ignore nonexistent files and do not prompt. This overrides the --interactive option. |
| -v, --verbose     | Display informative messages as the copy is performed                                |

When using a wildcard it is recommended to test the wildcard first with ls.

## Create links (ln)

Hard link:

```
ln file link
```

Symbolic link:
```
ln -s item link
```