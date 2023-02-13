#!/usr/bin/node
/*
    Print a square with the character #

    The size of the square must be the first argument
    of the program.
*/


/*
1. Check if the number of arguments is less than or equal to 2.
2.  If it is, print an error message and exit with a status of 1.
3.  Otherwise, convert the argument to an integer and store it in the size variable.
4.  Loop through the rows.
5.  Loop through the columns.
6.  Print a # character.
7.  Print a newline character.
*/
if (process.argv.length <= 2) {
    process.stderr.write("Missing argument\n");
    process.stderr.write("Usage: ./1-print_square.js <size>\n");
    process.stderr.write("Example: ./1-print_square.js 8\n");
    process.exit(1)
}

size = parseInt(process.argv[2], 10)

for (let i = 0; i < size; i++) {
    for (let j = 0; j < size; j++) {
        process.stdout.write("#");
    }
    process.stdout.write("\n");
}
