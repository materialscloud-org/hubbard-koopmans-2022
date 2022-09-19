# Test a simple PWscf calculation

To get started lets test how to run a simple calculation using the PWscf ```pw.x``` code from Quantum ESPRESSO.

Within the VM, all the installed code are already added to the PATH environmental variable, hence they can all be accessed by simply writing their name in the terminal.

To pass an input file to ```pw.x``` we will use the character ```<``` which redirects the content of a file to the STDIN of the launched program.  
    ```pw.x < INPUT_FILE_NAME```
In this way, the output of the code will actually be displayed within the terminal.
In order to save it to a file we will use ```>``` which redirects the STDOUT of the program to a file.  
    ```pw.x < INPUT_FILE_NAME > OUTPUT_FILE_NAME```
You could also add ```&``` to the end of the command to run the program in background (it will not keep the terminal occupied)
    ```pw.x < INPUT_FILE_NAME > OUTPUT_FILE_NAME &```
In this case you could use a command such as ```tail -f OUTPUT_FILE_NAME``` to inspect the output file while it is being generated (Use CTRL+C in order to exit/kill ```tail -f```).

## Example exercise

For all exercises we will assume that you have downloaded the repository "learn-fireside" and are working in the respective folder for each exercise. If you have not donwloaded the repository yet, then go to the main page (https://github.com/materialscloud-org/learn-fireside) and click the green "Code" button to download the zipped file. Then move this zipped file from "Downloads" to Desktop/SHARED in the Virtual Machine. For more instructions see Sec. 1.1 in the handout.pdf (https://github.com/materialscloud-org/learn-fireside/blob/master/files/handout.pdf).

1. Copy the [provided input files](../files/) into this folder  
  ```cp ../files/NaCl.scf.in .```
2. Copy or link the pseudopotential files for Na and Cl inside a folder named ```pseudo``` in the same path of the input file  
  ```cp -r ../files/pseudo/ .```
3. Run the code pw.x from terminal using the command  
  ```pw.x < NaCl.scf.in > NaCl.scf.out```
4. Inspect the output file using your preferred editor or command line tool (eg ```vim```, ```nano```, ```less```, ```cat```).  
  The output files are written in human readable form, so you can try to skim through it to see what information is available

[BACK TO INDEX](../README.md)
