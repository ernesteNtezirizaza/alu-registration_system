# ALU REGISTRATION SYSTEM 


### Getting started

> Make sure you have a well-functioning Linux environment.

clone the repo

```bash
git clone https://github.com/ernesteNtezirizaza/alu-registration_system
```
Run


``` bash
cd alu-registration_system
cd negpod_4-q1
```

``` bash
./main.sh
```

> Program Menu:

### Features

1. Recording student
2. Viewing a list of all registered students 
3. Searching a specific student
4. Updating student details by id
5. Deleting student records by id
6. A very exceptional navigation system

### Additional Scripts

There are two additional scripts files in this directory, <code>move-t0-directory.sh</code> and <code>backup-Negpod_3.sh</code>.
1. Running <code>move-to-directory.sh</code> will move <code>main.sh, Students-list_1023.txt, Select-emails.sh and student-emails.txt</code> into the <code>negpod_3-q1</code> directory
2. Running <code>backup-Negpod_3.sh</code> backups the <code>negpod_3-q1</code> directory to a remote server that is specified in the script.

Note: 
The <code>rsync</code> and <code>sshpass</code> commands are not available on your system by default. That said, you will need to install them first before running <code>backup-Negpod_3.sh</code>

``` bash
sudo apt update
```

``` bash
sudo apt install rsync
```

``` bash
sudo apt install sshpass
```

### Negpod 4 Contributors

1. David Arua
2. James Jok Dut Akuei
3. Erneste Ntezirizaza
4. Irielle Irakoze
5. Divine Ikirezi
