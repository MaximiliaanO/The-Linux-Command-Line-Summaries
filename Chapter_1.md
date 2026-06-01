# Chapter 1: What is the shell?

## Terminal emulators

When using a GUI in the OS we use terminal emulators. KDE = konsole, and GNOME = (gnome)-terminal

## Command history

The terminal in most linux distribution ssaves the last 1,000 commands by default.

#### Mouse usage:

Whilst the terminal is all about the keyboard the mouse can be used too.

| Action                             | Outcome                              |
|------------------------------------|--------------------------------------|
| Hold left mouse and drag over text | Copies to clipboard                  |
| Double left click a word           | Copies to clipboard                  |
| Click middle mouse                 | Pastes the clipboard to the terminal |

## Some simple commands:

```
# See the current date
max@pop-os:~$ date
Wed Dec 17 10:48:06 PM CET 2025

#See the calender in the terminal
max@pop-os:~$ cal
   December 2025      
Su Mo Tu We Th Fr Sa  
    1  2  3  4  5  6  
 7  8  9 10 11 12 13  
14 15 16 17 18 19 20  
21 22 23 24 25 26 27  
28 29 30 31           

#See the current amount of free/used drive spcae
max@pop-os:~$ df
Filesystem             1K-blocks     Used  Available Use% Mounted on
tmpfs                    3230648     2260    3228388   1% /run
efivarfs                     268      235         29  90% /sys/firmware/efi/efivars
/dev/mapper/data-root 1958563420 23432836 1835567272   2% /
tmpfs                   16153232    10356   16142876   1% /dev/shm
tmpfs                       5120        0       5120   0% /run/lock
/dev/nvme0n1p2           4186096  2668076    1518020  64% /recovery
/dev/nvme0n1p1           1044456   335208     709248  33% /boot/efi
tmpfs                    3230644      156    3230488   1% /run/user/1000

#See the current amount of free/used memory
max@pop-os:~$ free
               total        used        free      shared  buff/cache   available
Mem:        32306464     2589316    26660900      966640     3056248    26698492
Swap:       20970996           0    20970996


```