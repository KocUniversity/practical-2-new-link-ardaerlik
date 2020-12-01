# Practical-2: Shell Tools and Scripting

Lectures:

[Shell Tools] (https://classroom.github.com/a/UnxK6czE)
[Shell Scripting] (https://classroom.github.com/a/BFKC0jgb)

## How to submit
1. Type your answers for the first three questions to the "main.sh".
2. Type your answer for Question 4 in "marco.sh" and "polo.sh".
3. Fill in the parts in "check_mystic.sh" for question 5.
4. Do not forget to commit and push your answers!

## Exercises
1. Read `ls --help` and write an `ls` command that lists files in the following manner:

  * List *all* files, i.e. including the hidden ones
  * Show file size in human readable format (e.g. 454M instead of 454279954)
  * Files ordered by last modified
  * Colored output


2. In your command history, find where you have typed the word `color`.
**Hint.** Use pipe, `|`, to combine `history` and `grep`.


3. Find all the `.sh` files and execute them with `exec` and `sh` commands.


4. Let's play a game called "Marco Polo"! 
Write two functions called `marco` and `polo` to do the following:
  * Whenever you execute `marco`, the current working directory should be saved in some manner.
  * Then, when you execute `polo`, no matter what directory you are in, `polo` should change back to the directory where you executed `marco`. 

**Hint.** Write each function in a file; i.e. `marco` in a file called "marco.sh" and (re)load the definitions to your shell via source, i.e. `source marco.sh` or `. marco.sh`.


5. Let's say you have a program called "mystic" that fails when the result is equal to a certain number which is specified as input. Write a bash script to run the program several times and count how many times it fails. Your script should take as input 1) how many times to run the program 2) the unwanted value. For example:

`./check_mystic 1000 42`

**Hints.**

Remember: 

* `$1` is a special variable for the first argument.
* `$0` is reserved for the name of the script.
* `$2-$9` second to the ninth arguments.
* `$?` will give you the return code from the previous command. 0 for a successful run and 1 or 2 for error.

* We can use double parantheses `((...))` to perform [arithmetic operations](http://tiswww.case.edu/php/chet/bash/bashref.html#Arithmetic-Expansion):

`((a=2+3)); echo "a=$a"`

* We can get the result of operation using `$` sign:
`$((...))`. 

This means perform the arithmetic operation and return the result of the calculation.

`a=$((2+3)); echo "a=$a"`

* We know that we can redirect the output to a file using `>`:
`echo "Hello world!" > out.txt`

* A file descriptor is a positive integer that represents an open file. If you have 100 open files, you will have 100 file descriptors for them.

* There are two separate file descriptors for the Standard Output (stdout) and Standard Error (stderr). This means there are "ids" that identify these two locations, and it will always be **1** for **stdout** and **2** for **stderr**.

* Then,

  `echo "Hello world!" > out.txt`

  is the same as

  `echo "Hello world!" 1> out.txt`

Here, 1 just stands for the file descriptor of stdout. The syntax for redirecting is [FILE_DESCRIPTOR]>:

`1>` for output
`2>` for error

For example, trying to `cat` the non-existing file "nop.txt" will result in an error which will be redirected to "error.txt".

`cat nop.txt 2> error.txt`

* You can do `&1` to reference the value of the file descriptor 1 (stdout). 

* You can redirect the error to the same place as the output by doing `2>&1`.









