!base directory for zemax files etc.
basedir$="C:\Users\operator\Documents\GitHub\ZemaxCalibrate\"

basedir$=basedir$+"UNPOL\"
!set configuration 1
SETCONFIG 1
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
PRINT, "Config 1, Field set "+$STR(i)+" is set!"
name$ = "_" + "field"+ $STR(i)
main_name$ = basedir$+"Config_1\transmission"
final_name$ = main_name$ + name$ + ".txt"
GETTEXTFILE final_name$, "Tra"
CONVERTFILEFORMAT final_name$, 1
PRINT, "Config 1, Field set "+$STR(i)+" modeled!"
NEXT

!set configuration 2
SETCONFIG 2
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
PRINT, "Config 2, Field set "+$STR(i)+" is set!"
name$ = "_" + "field"+ $STR(i)
main_name$ = basedir$+"Config_2\transmission"
final_name$ = main_name$ + name$ + ".txt"
GETTEXTFILE final_name$, "Tra"
CONVERTFILEFORMAT final_name$, 1
PRINT, "Config 2, Field set "+$STR(i)+" modeled!"
NEXT

!set configuration 3
SETCONFIG 3
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
PRINT, "Config 3, Field set "+$STR(i)+" is set!"
name$ = "_" + "field"+ $STR(i)
main_name$ = basedir$+"Config_3\transmission"
final_name$ = main_name$ + name$ + ".txt"
GETTEXTFILE final_name$, "Tra"
CONVERTFILEFORMAT final_name$, 1
PRINT, "Config 3, Field set "+$STR(i)+" modeled!"
NEXT

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
name$ = "_" + "field"+ $STR(i)
main_name$ = basedir$+"Config_4\transmission"
final_name$ = main_name$ + name$ + ".txt"
GETTEXTFILE final_name$, "Tra"
CONVERTFILEFORMAT final_name$, 1
PRINT, "Config 4, Field set "+$STR(i)+" modeled!"
NEXT
