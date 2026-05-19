# Compiler Design Practicals Setup Guide

````md
# Compiler Design Practicals (Flex, Bison & GCC Setup)

This repository contains Compiler Design practical programs using:
- Flex (Lex)
- Bison (Yacc)
- GCC Compiler

These practicals are intended to run on **Windows** using **WinFlexBison**.

---

# Requirements

Before running the programs, install the following:

## 1. GCC Compiler (MinGW)

Download MinGW:
https://www.mingw-w64.org/

OR use:
https://sourceforge.net/projects/mingw/

### During installation:
Make sure you install:
- gcc
- g++
- mingw32-make

### Add MinGW to PATH
Example:
```text
C:\MinGW\bin
````

Verify installation:

```bash
gcc --version
```

---

## 2. WinFlexBison

Download:
[https://github.com/lexxmark/winflexbison/releases](https://github.com/lexxmark/winflexbison/releases)

Download the latest:

```text
win_flex_bison-<version>.zip
```

Extract it to a folder such as:

```text
C:\winflexbison
```

### Add to PATH

Add:

```text
C:\winflexbison
```

to Environment Variables → PATH.

Verify:

```bash
win_flex --version
win_bison --version
```

---

# VS Code Setup (Recommended)

Install:

* VS Code
* C/C++ Extension by Microsoft

Optional Extensions:

* Code Runner
* Lex Flex & Yacc support

---

# Folder Structure

```text
practical_1/
practical_2/
practical_3/
...
```

Each folder contains:

* `.l` files → Flex programs
* `.y` files → Bison programs
* supporting `.c` files if required

---

# Running Flex Programs

Example:

```bash
win_flex lexer.l
gcc lex.yy.c -o lexer
lexer.exe
```

---

# Running Bison Programs

Example:

```bash
win_bison -d parser.y
gcc parser.tab.c -o parser
parser.exe
```

---

# Running Flex + Bison Together

Example:

```bash
win_bison -d parser.y
win_flex lexer.l
gcc lex.yy.c parser.tab.c -o parser
parser.exe
```

---

# Common Errors & Fixes

## 1. 'gcc' is not recognized

### Fix:

Add MinGW `bin` folder to PATH.

---

## 2. 'win_flex' is not recognized

### Fix:

Add WinFlexBison folder to PATH.

---

## 3. Undefined reference to yywrap

### Fix:

Add:

```c
int yywrap() {
    return 1;
}
```

OR compile using:

```bash
gcc lex.yy.c -lfl
```

---

## 4. Missing quotes or syntax errors

Carefully check:

* semicolons
* quotes
* `%{ %}`
* `%%` separators

---

# Example Workflow

```bash
cd practical_1

win_flex lexer.l

gcc lex.yy.c -o lexer

lexer.exe
```

---

# Useful Commands

## Check GCC Version

```bash
gcc --version
```

## Check Flex Version

```bash
win_flex --version
```

## Check Bison Version

```bash
win_bison --version
```

---

# Notes

* Run commands inside terminal/PowerShell.
* Make sure all required files are in the same folder.
* Use proper naming conventions for `.l` and `.y` files.
* Some practicals may require manual input from terminal.

---

# Author

Aditya Ghodki

```
```
