!base directory for zemax files etc.
basedir$="C:\Users\operator\Documents\GitHub\ZemaxCalibrate\"

basedir$=basedir$+"POL\"
!set configuration 4
SETCONFIG 4
!set the number of field points
SETSYSTEMPROPERTY 101, 12
!for loop read the files of field points, set, model
FOR i=1,48,1
FORMAT 1 INT
main_name$=basedir$+"Fields\field"
name$= "_" + $STR(i)
final_name$=main_name$ + name$+ ".txt"
PRINT, final_name$
OPEN final_name$
!for loop set the fields according to the file
FOR j=1,12,1
FORMAT 1 INT
READ xfld, yfld
PRINT xfld, yfld
SETSYSTEMPROPERTY 102, j, xfld
SETSYSTEMPROPERTY 103, j, yfld
NEXT
PRINT, "Config 4, Field set "+$STR(i)+" is set!"
!read polarization data inputs
filename$=basedir$+"CalibrationInput.txt"
print, filename$
OPEN filename$
!for loop polarization set + model
FOR k=1,49,1
FORMAT 1 INT
READ jx, jy 
PRINT jx, jy
SETSYSTEMPROPERTY 60, jx
SETSYSTEMPROPERTY 61, jy
SETSYSTEMPROPERTY 62, 0
SETSYSTEMPROPERTY 63, 0
SETSYSTEMPROPERTY 65, 0
!OPENANALYSISWINDOW "Tra"
name$ = "_" + "field"+ $STR(i)+ "_" + "pol" + $STR(k)
main_name$ = basedir$+"Config_4\transmission"
final_name$ = main_name$ + name$ + ".txt"
GETTEXTFILE final_name$, "Tra"
CONVERTFILEFORMAT final_name$, 1
PRINT, "Config 4, Field set "+$STR(i)+", Polarization "+$STR(k)+" modeled!"
NEXT
NEXT
