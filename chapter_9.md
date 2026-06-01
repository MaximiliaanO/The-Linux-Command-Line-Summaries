# Chapter 9: Permissions

| Programs | Description                       |
|----------|-----------------------------------|
| id       | Display user identity             |
| chmod    | change a file's mode              |
| umask    | Set the default file permissions  |
| su       | Run a shell as another user       |
| sudo     | Execute a command as another user |
| chgrp    | Change a file's group ownership   |
| passwd   | Change a user's password          |

## Reading Writing and Executing

When we print a ist of directory contents with the -l flag we see the output formatted like this:

```
drwxrwxr-x  2 max max 4096 Jun  1 22:07 ./
drwxrwxr-x 32 max max 4096 May 28 10:43 ../
-rw-rw-r--  1 max max 2024 Jun  1 22:03 Chapter_1.md
-rw-rw-r--  1 max max  940 Jun  1 22:03 Chapter_2.md
-rw-rw-r--  1 max max 4587 Jun  1 22:02 Chapter_4.md
-rw-rw-r--  1 max max  642 Apr 23 16:06 Chapter_5.md
-rw-rw-r--  1 max max 2262 Jun  1 22:02 Chapter_6.md
-rw-rw-r--  1 max max  466 Jun  1 22:06 chapter_9.md
-rw-rw-r--  1 max max    0 May 21 21:39 foo.txt
-rw-rw-r--  1 max max    8 May 21 21:26 newfile.txt
-rw-rw-r--  1 max max    0 Jun  1 22:07 permissions.txt
```
### File attributes:

The first 10 characters describe the file attributes, the first character describes the file type.

| Attribute | File Type      |
|-----------|----------------|
| -         | A regular file |
| d         | A directory    |
| l         | A symbolic link. When there is a symbolic link the remaning attributes are always rwxrwxrwx and are dummy values. The real permissions are in the actual file it links to.
| c         | A character special file. Refers to a device that handles data as a stream of bytes, such as a terminal or /dev/null|
| b         | A block special file. Device that handles data in blocks i.e. DVD drive or hard drive |

The remaining nine characters of the file attributes are called the file mode. These represent the read write and execute permissions for the file's owner, the file group's owner and everybody else.

| Owner | Group | World |
|-------|-------|-------|
| rwx   | rwx   | rwx   |

### Permission attributes:

| Attribute | Description        |
|-----------|--------------------|
| r         | read permission    |
| w         | write pemission    |
| x         | execute permission |

## chmod: Change File Mode:

To change the permissions of a file or directory use the chmod command.
Only the owner or superuser can change permissions.
File modes can be changed by using:

- Octal number representation
- Symbolic representation

| Octal | Binary | File mode |
|-------|--------|-----------|
| 0     | 000    | ---       |
| 1     | 001    | --x       |
| 2     | 010    | -w-       |
| 3     | 011    | -wx       |
| 4     | 100    | r--       |
| 5     | 101    | r-x       |
| 6     | 110    | rw-       |
| 7     | 111    | rwx       |

## umask: Set Default Permissions:

umask uses the same octals to set a mask of permissions upon creation of files / directories.
For exmaple ```umask 300``` sets read only permissions for the owner upon file creation and rw permissions for the group and the world.
The umask command uses four octals the first is for the setuid bit id, the second for the owner, the third for the group of the owner and the last for the rest of the world.

## chown: Change File Owner and Group

With the chown command you can change the file owner and file group owner.
the syntax looks like this: ```chown [owner][:[group]] file``.

Example: ```sudo chown ttony: ~tony/myfile.txt```