�
 TDMDATA 0�  TPF0TdmDatadmDataOldCreateOrderLeft� TopkHeight� WidthB TStoredProcspDelEmployeeDatabaseNameAppDBStoredProcNameDELETE_EMPLOYEELeftTopH	ParamDataDataType	ftIntegerNameEMP_NUM	ParamTypeptInput    TDataSourceEmpDSDataSetqryEmployeeOnUpdateDataEmpDSUpdateDataLeft� Top  
TUpdateSQL	EmpUpdateModifySQL.Stringsupdate EMPLOYEEset  FIRST_NAME = :FIRST_NAME,  LAST_NAME = :LAST_NAME,  SALARY = :SALARY,  DEPT_NO = :DEPT_NO,  JOB_CODE = :JOB_CODE,  JOB_GRADE = :JOB_GRADE,  JOB_COUNTRY = :JOB_COUNTRYwhere  EMP_NO = :OLD_EMP_NO InsertSQL.Stringsinsert into EMPLOYEE@  (FIRST_NAME, LAST_NAME, SALARY, DEPT_NO, JOB_CODE, JOB_GRADE, JOB_COUNTRY)valuesF  (:FIRST_NAME, :LAST_NAME, :SALARY, :DEPT_NO, :JOB_CODE, :JOB_GRADE, :JOB_COUNTRY) DeleteSQL.Stringsdelete from EMPLOYEEwhere  EMP_NO = :OLD_EMP_NO Left� Top  TQueryqryEmployeeCachedUpdates	OnUpdateRecordqryEmployeeUpdateRecordDatabaseNameAppDBSQL.Strings�SELECT Employee.EMP_NO, Employee.FIRST_NAME, Employee.LAST_NAME, Department.DEPARTMENT, Job.JOB_TITLE, Employee.SALARY, Employee.DEPT_NO, Employee.JOB_CODE, Employee.JOB_GRADE, Employee.JOB_COUNTRYFROM EMPLOYEE Employee#   INNER JOIN DEPARTMENT Department0   ON  (Department.DEPT_NO = Employee.DEPT_NO)     INNER JOIN JOB Job+   ON  (Job.JOB_CODE = Employee.JOB_CODE)  .   AND  (Job.JOB_GRADE = Employee.JOB_GRADE)  2   AND  (Job.JOB_COUNTRY = Employee.JOB_COUNTRY)  ORDER BY Department.DEPARTMENT 
UpdateModeupWhereKeyOnlyUpdateObject	EmpUpdateLeft<Top	ParamData  TSmallintFieldqryEmployeeEMP_NO	FieldNameEMP_NOVisible  TStringFieldqryEmployeeFIRST_NAME	FieldName
FIRST_NAMESize  TStringFieldqryEmployeeLAST_NAME	FieldName	LAST_NAME  TStringFieldqryEmployeeDEPARTMENT	FieldName
DEPARTMENTSize  TStringFieldqryEmployeeJOB_TITLE	FieldName	JOB_TITLESize  TFloatFieldqryEmployeeSALARY	FieldNameSALARY  TStringFieldqryEmployeeDEPT_NO	FieldNameDEPT_NOVisibleSize  TStringFieldqryEmployeeJOB_CODE	FieldNameJOB_CODESize  TSmallintFieldqryEmployeeJOB_GRADE	FieldName	JOB_GRADE  TStringFieldqryEmployeeJOB_COUNTRY	FieldNameJOB_COUNTRYSize   	TDatabaseAppDB	AliasNameIBLocal	Connected	DatabaseNameAppDBLoginPromptParams.StringsUSER NAME=SYSDBAOPEN MODE=READ/WRITESCHEMA CACHE SIZE=8LANGDRIVER=SQLQRYMODE="SQLPASSTHRU MODE=SHARED AUTOCOMMITSCHEMA CACHE TIME=-1MAX ROWS=-1BATCH COUNT=200ENABLE SCHEMA CACHE=FALSESCHEMA CACHE DIR=ENABLE BCD=FALSEBLOBS TO CACHE=64BLOB SIZE=32PASSWORD=masterkey SessionNameDefaultLeftTop  TQueryqryDepartmentDatabaseNameAppDBSQL.StringsSELECT DEPT_NO,DepartmentFROM Department LeftZTopJ	ParamData   TDataSourceDepDSDataSetqryDepartmentLeft� TopL  TQueryqryJobDatabaseNameAppDBSQL.StringsJSELECT JOB_CODE, JOB_GRADE, JOB_COUNTRY, JOB_TITLE, MIN_SALARY, MAX_SALARYFROM JOB Job Left� TopL	ParamData   TDataSourceJobDSDataSetqryJobLeft� TopL   