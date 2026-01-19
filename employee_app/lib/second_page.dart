import 'package:flutter/material.dart';

void main(){
    runApp(SecondPage());
}
class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  TextEditingController nameController=TextEditingController();
   TextEditingController logoController=TextEditingController();
    TextEditingController salaryController=TextEditingController();

  List<Map> employeeList=[];
  String name="";
  String logo="";
  String salary="";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Employee Information", style: TextStyle(color: Colors.black,fontSize: 25),
        ),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: employeeList.length,
        itemBuilder:(BuildContext context, int index){   
          return taskCard(taskIndex: index);
        }
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){
            addBottomSheet();
         },
        child: Icon(Icons.add),
        backgroundColor: Colors.blueAccent,
        ),
    );
  }
  addBottomSheet(){
    return showModalBottomSheet(context: context, 
    builder: (BuildContext context){
      return Container(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Center(
                child: Text("Employee Info", style: TextStyle(color: Colors.black,fontSize: 25,fontWeight:FontWeight.bold),
                ),
              ),
               SizedBox(height: 20,),
               Text("Company name:",
               style: TextStyle(
                color:Colors.blueAccent,
                fontSize: 15 ,
                fontWeight: FontWeight.bold),),
               SizedBox(
                 child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    hintText: "Enter Your Dream company",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(color: Colors.blueAccent)
                    )
                   ),
                  
                 ),
               ),
               
               SizedBox(height: 20,),
                Text("Company Logo:",
                style: TextStyle(
                color:Colors.blueAccent,
                fontSize: 15 ,
                fontWeight: FontWeight.bold),),
               SizedBox(
                 child: TextField(
                   controller: logoController,
                  decoration: InputDecoration(
                    hintText: "company logo",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(color: Colors.blueAccent)
                    )
                   ),
                  
                 ),
               ),
                SizedBox(height: 20,),
                 Text("Employee salary:",
                   style: TextStyle(
                  color:Colors.blueAccent,
                  fontSize: 15 ,
                 fontWeight: FontWeight.bold),),
               SizedBox(
                 child: TextField(
                   controller: salaryController,
                  decoration: InputDecoration(
                    hintText: "Enter Your Expected salary",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(color: Colors.blueAccent)
                    )
                   ),
                  
                 ),
               ),
               SizedBox(height: 20,),
               Center(
                 child: SizedBox(
                  width: 200,
                   child: ElevatedButton(onPressed: (){
                    String name=nameController.text;
                    String logo=logoController.text;
                    String salary=salaryController.text;

              if(name !="" && logo !="" && salary !=""){
                 Map obj={
                      "name":name,
                      "logo":logo,
                      "salary":salary,
                    };
                    employeeList.add(obj);
                    nameController.clear();
                    logoController.clear();
                    salaryController.clear();

                    setState(() { });
                    }else{

                    }
                    
                   },
                    child: Text(
                    "Submit data",
                    style: TextStyle(color: Colors.black),
                   ),
                   style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent),
                   ),
                 ),
               ),
               
          
          
            ],
          ),
        ),
      );
    }
    );
  }
  Widget taskCard ({required int taskIndex}){
   return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            color: Colors.transparent,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 16.0),
                              child: Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(35),
                                      child: Image.network("${employeeList[taskIndex]['logo']}",
                                      height: 75, 
                                      width: 75,
                                      fit: BoxFit.cover,),
                                    ),
                                    SizedBox(width: 10,),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                        //  height: 60,
                                          width: 150,
                                          child: Text("${employeeList[taskIndex]['name']}",style: TextStyle(color: Colors.black,fontSize: 22),
                                          ),
                                        ),
                                        SizedBox(height: 10,),
                                         Text("${employeeList[taskIndex]['salary']}",style: TextStyle(color: Colors.black,fontSize: 20),
                                        ),
                                      ],
                                    ),
                                
                                   SizedBox(width: 30,),
                                  GestureDetector(
                                    onTap: (){
                                      employeeList.removeAt(taskIndex);
                                      setState(() {            
                                      });
                                    },
                                    child: Stack(
                                      children: [
                                              Container(
                                          height: 50,
                                          width: 75,
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(25),
                                          color: const Color.fromARGB(255, 76, 97, 114)
                                        ),
                                        child: Text("Delete",style: TextStyle(color:Colors.white),
                                        ),
                                      ),
                                      
                                      ],
                                       
                                    ),
                                  )  ,
                                                              
                                    
                                  ],
                                                 
                                                 
                                ),
                              ),
                            ),
                          ),
                   
                      );
    
  }
  
 

}

