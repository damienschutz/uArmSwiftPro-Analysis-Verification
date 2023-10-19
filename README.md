# uArmSwiftPro-Analysis-Verification

Repository for MATLAB scripts, Simulink models and Python scripts</br>
"uArm Swift Pro: Analysis and Verifcation"</br>
Final Year Project of Damien Nelson Schütz </br>
Student Number: SCHDAM003</br>
University of Cape Town</br>

**MATLAB scripts**

All scripts can be used in their default state - no changes to workspace or paths required

**Simulink simulations**

After downloading the files make sure to download the folder "STEP Files for Final Simulation"</br>
Open the Simulink model - there are three: one standard, one for forward and one for inverse kinematics</br>
Once the simulation is open in the Simulink environment select the "Modelling" tab at the top left of the Simulink ribbon</br>
Select the drop down arrow and open the section "Model Workspace" </br>
Right click on the empty block space and select "Import"</br>
Select the MATLAB code file called "uArmSwiftPro_DataFile.m"</br>
On the right of the window go to the section on the model directory and click "Browse" </br>
Again select the file "uArmSwiftPro_DataFile.m" - this ensures that Simulink knows where to find the data file</br>
Open the command window for MATLAB</br>
Add the directory that opens the folder "STEP Files for Final Simulation" </br>
This can either be done using the command </br>
      cd ("yourpathfolder") or addpath ("yourpathfolder")</br>
Be sure to enclose the directory in apostrophes ("")</br>
Run the simulation

**Python API**

Install all files from the folder contact me on GitHub</br>
This installs the necessary wrappers from the API that the uArm will use</br>
Open file "FK_testing_uArm.py" and follow the prompts</br>
Connect the uArm to a power source and to your computer with a micro-usb cable</br>
Turn the uArm on </br>
Run the Python script - you should see it move depending on your inputs in the code

If any errors occur
