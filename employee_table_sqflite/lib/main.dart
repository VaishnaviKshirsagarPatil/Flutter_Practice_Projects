import 'package:employee_table_sqflite/empolyee_model.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

dynamic database;

//insert data
void insertEmployeeData(EmployeeModel empobj) async{
  Database localDB= await database;
  localDB.insert(
     "Employee", 
     empobj.empMap(),
     conflictAlgorithm: ConflictAlgorithm.replace,
     );  
}

//Fetch Data
Future<List<Map>> getEmployeeData() async{
  Database localDB=await database;
  return await localDB.query("Employee",
  columns: ['empName', 'empID', 'devType']);
}

//Update Data
void updateEmployeeData(EmployeeModel empobj) async{
  Database localDB=await database;
  localDB.update(
    "Employee",
     empobj.empMap(),
     where: 'empID=?',
     whereArgs: [empobj.empID],
     );
}
//delete Data
 void  deleteEmployeeData(int empID) async{
   Database localDB=await database;
   localDB.delete("Employee",
   where: 'empID=?',
   whereArgs: [empID]);
 }

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  database=openDatabase(
    join(await getDatabasesPath(), "Employee.db"),
    version: 1,
    onCreate: (db, version) {
      db.execute(
        '''
        create table Employee(
        empName text,
        empID int primary key,
        devType text,
        empSalary real)
        '''
      );
    },

  );
  EmployeeModel emp1 = EmployeeModel(
     empName: "Vaishnavi", 
     empID: 11,
     devType: "flutter Developer", 
     empsalary:2.5,
     );
  EmployeeModel emp2=EmployeeModel(
     empName: "kalyani", 
     empID: 12,
     devType: "Java Developer", 
     empsalary:3.5,
     );
  EmployeeModel emp3=EmployeeModel(
     empName: "Shivani", 
     empID: 13,
     devType: "fullStack Developer", 
     empsalary:5.5,
     );

  insertEmployeeData(emp1);
  insertEmployeeData(emp2);
  insertEmployeeData(emp3);

  print(await getEmployeeData());


 emp1=EmployeeModel(
     // empName:"${emp1.empName}-yogita",
      empName: "yogita",
      empID: emp1.empID,
      devType:"python developer",
      empsalary:emp2.empsalary,
      );
  updateEmployeeData(emp1);
  emp2=EmployeeModel(
      empName:emp2.empName,
      empID: emp2.empID,
     // devType:"${emp2.devType}-C++ Developer",
      devType:"C++ Developer",
      empsalary:emp2.empsalary
      );
  updateEmployeeData(emp2);
  print(await getEmployeeData());

  deleteEmployeeData(emp1.empID);
   print(await getEmployeeData());


}
