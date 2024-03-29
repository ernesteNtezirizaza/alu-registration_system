# ALU Registration System


### Getting started

Clone the repo

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

### Program Features

1. Create a student record
2. View all students
3. Delete student record (by Student ID)
4. Update student record (by Student ID)
5. Exit the application

### Additional Files

Move back to the root of the project.
``` bash
cd alu-registration_system
```
1. Running <code>move-to-directory.sh</code> will move <code>main.sh, students-list_1023.txt, select-emails.sh and student-emails.txt</code> into the <code>negpod_4-q1</code> directory.

``` bash
./move-to-directory.sh
```
   
2. Running <code>backup-Negpod_4.sh</code> will back up the <code>negpod_4-q1</code> directory to a remote server that is specified in the script.

``` bash
./backup-Negpod_4.sh
```

The <code>rsync</code> and <code>sshpass</code> commands are not available on your system by default. That said, you will need to install them first before running <code>backup-Negpod_4.sh</code>

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
