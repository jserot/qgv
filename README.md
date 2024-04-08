This is a fork of the [QGV](https://github.com/nbergont/qgv.git) library with minor changes and fixes to be used
in the [SSDE](https://github.com/jserot/ssde.git) and
[Rfsm-Light](https://github.com/jserot/rfsm-light.git) projects.

## TL;DR

- `./configure -platform <platform>`
- `make`

### To configure for a target platform

- `./configure -platform <platform>`


### To build the library 

- `cd src/lib`
- `make qmake`
- `make`
- `make dist`

This will install in `../../dist/<platform>/lib`

### To build and run the examples from the CL

- `cd src/examples/<example>`
- `make qmake`
- `make`
- `make run`

### To build the examples as clickable applications

- `cd src/examples/<example>`
- `make dist`

This will put the application in `../../dist/<platform>/bin`.



