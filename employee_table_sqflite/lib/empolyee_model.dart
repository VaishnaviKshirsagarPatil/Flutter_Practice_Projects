class EmployeeModel{
  String empName;
  int empID;
  String devType;
  double empsalary;

  EmployeeModel({
    required this.empName,
    required this.empID,
    required this.devType,
    required this.empsalary,

  });
  Map<String, dynamic> empMap(){
    return{
      'empName':empName,
      'empID':empID,
      'devType':devType,
      'empSalary':empsalary,
    };
  }
}