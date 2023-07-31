# Zemax Calibrate
Calibration file generator for Zemax Opticstudio WALOP Instrument
## makefields
Will make the CalibrationInput.txt file for the simulation of polarized light
##### DON'T FORGET TO ADD ```-1.0000, 0.0000``` TO THE END OF THE FILE, if not existent

## makefields
Will make the Files/field_*.txt files for the simulation of polarized and unpolarized light

## Model_Polarized and Model_Unpolarized
Those are the zemax macros (ZPL) that will do the modeling.
##### Do not forget to change the basedir variable (top of each file) to match the master folder downloaded from github.
##### Do not forget to add the folowing empty folders in ./POL and ./UNPOL (if non existent, empty if existent):
```
Config_1
Config_2
Config_3
Config_4
```