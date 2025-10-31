
_“Master the terminal, rule the machine.”_

---

## 🔹 1. Navigation & Basics

|Command|Meaning / Abbreviation|Description|Example|
|---|---|---|---|
|`pwd`|**P**rint **W**orking **D**irectory|Shows your current folder path.|`pwd`|
|`ls`|**L**i**s**t|Lists files/folders in the current directory.|`ls` or `ls -l`|
|`cd`|**C**hange **D**irectory|Moves you between folders.|`cd Documents/`|
|`cd ..`|—|Goes one level up (to parent folder).|`cd ..`|
|`cd ~`|—|Goes to your home directory.|`cd ~`|
|`clear`|—|Clears the terminal screen.|`clear`|
|`man`|**Man**ual|Opens manual for a command.|`man ls`|
|`command --help`|—|Quick help for any command.|`ls --help`|

**Tip:** `Tab` auto-completes file names.

---

## 🔹 2. Creating & Managing Files/Folders

|Command|Meaning / Abbreviation|Description|Example|
|---|---|---|---|
|`mkdir`|**M**a**k**e **Dir**ectory|Creates a new folder.|`mkdir my_folder`|
|`rmdir`|**R**e**m**ove **Dir**ectory|Deletes an empty folder.|`rmdir my_folder`|
|`rm -r`|**R**e**m**ove (recursive)|Deletes folder + contents.|`rm -r my_folder`|
|`touch`|—|Creates an empty file.|`touch notes.txt`|
|`echo`|—|Prints text to terminal or writes to a file.|`echo "Hello" > file.txt`|
|`cat`|**Cat**enate|Displays file contents.|`cat file.txt`|
|`cp`|**C**o**p**y|Copies files or folders.|`cp file1.txt file2.txt`|
|`mv`|**M**o**v**e|Moves or renames files.|`mv file.txt newname.txt`|
|`rm`|**R**e**m**ove|Deletes files.|`rm file.txt`|

**Symbols to remember:**

- `>` = overwrite file
    
- `>>` = append to file
    
- `*` = wildcard (example: `rm *.txt` removes all .txt files)
    

---

## 🔹 3. Viewing & Searching

|Command|Meaning / Abbreviation|Description|Example|
|---|---|---|---|
|`ls -a`|—|Lists **all** files (including hidden).|`ls -a`|
|`file`|—|Shows what type a file is.|`file notes.txt`|
|`head`|—|Shows first 10 lines of a file.|`head file.txt`|
|`tail`|—|Shows last 10 lines of a file.|`tail file.txt`|
|`less`|—|Scroll through large files.|`less bigfile.txt`|
|`grep`|**G**lobal **R**egular **E**xpression **P**rint|Searches for words inside files.|`grep "hello" file.txt`|
|`find`|—|Finds files by name or type.|`find ~ -name "*.txt"`|

---

## 🔹 4. System Information

|Command|Meaning / Abbreviation|Description|Example|
|---|---|---|---|
|`whoami`|—|Shows your username.|`whoami`|
|`uname -a`|**Uni**x **name**|Displays system info.|`uname -a`|
|`date`|—|Shows current date & time.|`date`|
|`uptime`|—|Shows how long the system’s been running.|`uptime`|
|`history`|—|Shows all your previous commands.|`history`|
|`!!`|—|Repeats the last command.|`!!`|

---

## 🔹 5. Permissions & Admin Power

|Command|Meaning / Abbreviation|Description|Example|
|---|---|---|---|
|`sudo`|**S**uperuser **Do**|Runs commands as administrator (root).|`sudo apt update`|
|`chmod`|**Ch**ange **Mod**e|Changes file permissions (read/write/execute).|`chmod +x script.sh`|
|`chown`|**Ch**ange **Own**er|Changes file owner.|`sudo chown user file.txt`|

**Permission codes:**

- `r` = read
    
- `w` = write
    
- `x` = execute  
    Example: `chmod 755 script.sh` → full access for owner, read/execute for others.
    

---

## 🔹 6. Software Management (Debian/Ubuntu)

|Command|Meaning / Abbreviation|Description|Example|
|---|---|---|---|
|`apt update`|**A**dvanced **P**ackaging **T**ool|Updates list of packages.|`sudo apt update`|
|`apt install`|—|Installs new software.|`sudo apt install cowsay`|
|`apt remove`|—|Removes software.|`sudo apt remove cowsay`|
|`apt list --installed`|—|Shows all installed software.|`apt list --installed`|

**Fun test:**

```bash
sudo apt install cowsay
cowsay "Linux is fun!"
```

---

## 🔹 7. Keyboard Shortcuts (Life Savers)

|Shortcut|Action|
|---|---|
|`Ctrl + C`|Stop running command|
|`Ctrl + L`|Clear screen|
|`Ctrl + R`|Search command history|
|`↑ / ↓`|Navigate through previous commands|
|`Tab`|Auto-complete file or folder names|

---

## 🔹 8. Mini Project: Practice Flow

1. `mkdir skillforge_demo`
    
2. `cd skillforge_demo`
    
3. `touch myfile.txt`
    
4. `echo "Linux is awesome!" > myfile.txt`
    
5. `cat myfile.txt`
    
6. `cp myfile.txt backup.txt`
    
7. `grep "Linux" backup.txt`
    
8. `mv backup.txt result.txt`
    
9. `ls -l`
    
10. `rm result.txt`
    

---

## 💡 Bonus Concept: Linux File System Hierarchy

|Directory|Purpose|
|---|---|
|`/`|Root of everything|
|`/home`|User directories|
|`/bin`|Essential system commands|
|`/etc`|Configuration files|
|`/var`|Logs, spool, cache|
|`/tmp`|Temporary files|
|`/usr`|User-installed programs|
|`/root`|Home folder for root user|

---
