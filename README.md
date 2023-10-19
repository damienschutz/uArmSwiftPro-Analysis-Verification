# uArmSwiftPro-Analysis-Verification

Repository for MATLAB scripts, Simulink models and Python scripts</br>
"uArm Swift Pro: Analysis and Verifcation"</br>
Final Year Project of Damien Nelson Schütz </br>
Student Number: SCHDAM003</br>
University of Cape Town</br>

**MATLAB scripts**

All scripts can be used in their default state - no changes to workspace or paths required

**Simulink simulations**

After downloading the files make sure to download the folder "STEP Files for Final Simulation"
Open the Simulink model - there are three: one standard, one for forward and one for inverse kinematics
Once the simulation is open in the Simulink environment select the "Modelling" tab at the top left of the Simulink ribbon
Select the drop down arrow and open the section "Model Workspace" 
Right click on the empty block space and select "Import"
Select the MATLAB code file called "uArmSwiftPro_DataFile.m"
On the right of the window go to the section on the model directory and click "Browse" 
Again select the file "uArmSwiftPro_DataFile.m" - this ensures that Simulink knows where to find the data file
Open the command window for MATLAB
Add the directory that opens the folder "STEP Files for Final Simulation" 
This can either be done using the command 
      cd ("<your directory path>") or addpath ("<your directory path>")
Be sure to enclose the directory in apostrophes ("")
Run the simulation

**Python API**

Install all files from the folder contact me on GitHub
This installs the necessary wrappers from the API that the uArm will use
Open file "FK_testing_uArm.py" and follow the prompts
Connect the uArm to a power source and to your computer with a micro-usb cable
Turn the uArm on 
Run the Python script - you should see it move depending on your inputs in the code

If any errors occur
