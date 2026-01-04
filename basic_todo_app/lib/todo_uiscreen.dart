import 'dart:developer';
import 'package:basic_todo_app/database.dart';
import 'package:basic_todo_app/todo_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class TodoUiscreen extends StatefulWidget {
  const TodoUiscreen({super.key});

  @override
  State<TodoUiscreen> createState() => _TodoListState();
}

class _TodoListState extends State<TodoUiscreen> {
TextEditingController titleController=TextEditingController();
TextEditingController descriptionController=TextEditingController();
TextEditingController dateController=TextEditingController();

  List cardColorList=[
    Color.fromRGBO(250, 232, 232, 1),
    Color.fromRGBO(232, 237, 250, 1),
    Color.fromRGBO(250, 249, 232, 1),
    Color.fromRGBO(250, 232, 250, 1),
  ];

  List<ToDoModel> toDocards=[];

  @override
  void initState(){
    super.initState();
    getData();
      
  }

  void getData() async{
    List<Map> cardList=await TodoDatabase().getTodoItems();
    log("CARD LIST: $cardList");
    for(var element in cardList){
      toDocards.add(
        ToDoModel(
          title: element['title'], 
          description: element['description'],
          date: element['date'],
          id: element['id'],
          ),
      );

    }
    setState(() { });
  }

  void clearController(){
    titleController.clear();
    descriptionController.clear();
    dateController.clear();
  }

  void submit(bool doEdit,[ToDoModel? obj]){
    if(titleController.text.isNotEmpty &&
     descriptionController.text.isNotEmpty &&
     dateController.text.isNotEmpty){ 

    if(doEdit){
      //Edit
      obj!.title=titleController.text;
      obj.description=descriptionController.text;
      obj.date=dateController.text;
      Map<String, dynamic> mapObj={
        'title':obj.title,
        'description':obj.description,
        'date':obj.date,
        'id':obj.id,
      };
      TodoDatabase().updateTodoItem(mapObj);

    }else{
      //ADD
      toDocards.add(
        ToDoModel(
        title: titleController.text,
        description: descriptionController.text,
        date: dateController.text,
        ),
        );
        Map<String, dynamic> dataMap={
          'title':titleController.text,
          'description':descriptionController.text,
          'date':dateController.text,
        };
        TodoDatabase().insertTodoItem(dataMap);
           
    }
    clearController();
    Navigator.of(context).pop();
    setState(() { });
    
  }
//  Navigator.of(context).pop();
}
  
 void showBottomSheet(bool doEdit, [ToDoModel? obj]){
 showModalBottomSheet(
   context: context,
   builder: (context){
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Create To-Do List",
                  style:GoogleFonts.quicksand(fontSize: 18,
                  fontWeight: FontWeight.w800,
                  color: Color.fromRGBO(0, 0, 0, 1))
                  ),
              ],
            ),
                SizedBox(height: 10,),
               Text("Title",
                  style:GoogleFonts.quicksand(fontSize: 18,
                   fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(2, 167, 177, 1))
              ),
                TextField(
                  controller: titleController,
                      decoration: InputDecoration(
                        hintText: "Enter Title",
                         hintStyle: TextStyle(color: const Color.fromARGB(255, 119, 118, 118)), 
                       border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(15),  
                    ),
                     enabledBorder: OutlineInputBorder( 
                     borderRadius: BorderRadius.circular(15),
                     borderSide: BorderSide(
                     color: Color.fromRGBO(88, 86, 86, 1), 
                    width: 2,         
                     ),
                    ),
                     focusedBorder: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(15),
                     borderSide: BorderSide(color: Color.fromRGBO(2, 167, 177, 1), width: 2), 
                   ),
                ),
              ),
              SizedBox(height: 10,),
               Text("Description",
                  style:GoogleFonts.quicksand(fontSize: 18,
                   fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(2, 167, 177, 1))
              ),
                TextField(
                  controller: descriptionController,
                   textAlign: TextAlign.start,
                      decoration: InputDecoration(
                        hintText: "Enter Your Description",
                         hintStyle: TextStyle(color: const Color.fromARGB(255, 119, 118, 118)), 
                       border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(15),  
                    ),
                     enabledBorder: OutlineInputBorder( 
                     borderRadius: BorderRadius.circular(15),
                     borderSide: BorderSide(
                     color: Color.fromRGBO(88, 86, 86, 1), 
                    width: 2,         
                     ),
                    ),
                     focusedBorder: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(15),
                     borderSide: BorderSide(color: Color.fromRGBO(2, 167, 177, 1), width: 2), 
                   ),
                    contentPadding: EdgeInsets.symmetric(vertical: 50, horizontal: 50), 
                ),
              ),
              
                SizedBox(height: 10,),
                 Text("Date",
                      style:GoogleFonts.quicksand(fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(2, 167, 177, 1))
                 ),
                TextField(
                  controller: dateController,
                decoration: InputDecoration(
                  hintText:"Enter date",
                   hintStyle: TextStyle(color: const Color.fromARGB(255, 119, 118, 118)), 
                  suffixIcon: Icon(Icons.calendar_month_rounded),

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),    
                    ),
                     enabledBorder: OutlineInputBorder( 
                     borderRadius: BorderRadius.circular(15),
                     borderSide: BorderSide(
                     color: Color.fromRGBO(88, 86, 86, 1), 
                    width: 2,         
                     ),
                    ),
                     focusedBorder: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(15),
                     borderSide: BorderSide(color: Color.fromRGBO(2, 167, 177, 1), width: 2), 
                   ),
                ),
                onTap: () async{
                DateTime? pickedDate= await showDatePicker(
                    context: context, 
                    firstDate: DateTime(2025), 
                    lastDate: DateTime(2026),
                  );
                  dateController.text =DateFormat.yMMMd().format(pickedDate!);
                },
              ),
              
               SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: (){
                    if(doEdit){
                      submit(doEdit, obj);
                    }else{
                      submit(doEdit);
                    }
                  
                  }, 
                  style: ElevatedButton.styleFrom(backgroundColor: Color.fromRGBO(2, 167, 177, 1),),
                     child:  Text("Submit",
                          style:GoogleFonts.quicksand(fontSize:20,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(255, 255, 255, 1),             
                          ),                
                     ),
                    
                     ),
                ],
              ), 
              SizedBox(height: 20,)   
        ],
      ),
    );
   }
   );
}
  @override
  Widget build(BuildContext context) {
    log("------------In Build Call-----------");
    return Scaffold(
      appBar: AppBar(
        title: Text("To-Do list",
        style:GoogleFonts.quicksand(fontSize: 26,
        fontWeight: FontWeight.w700,
        color: Color.fromRGBO(255, 255, 255, 1))
        ),
        backgroundColor:Color.fromRGBO(2, 167, 177, 1), 
      ),
      body: ListView.builder(
        itemCount: toDocards.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(        
              decoration: BoxDecoration(
                color: cardColorList[index%cardColorList.length],
                borderRadius: BorderRadius.circular(25),
              ),
               child: Padding(
                 padding: const EdgeInsets.all(10),
                 child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromRGBO(255, 255, 255, 1)
                           ),
                           child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                            child: Image.asset("assets/images/todo1.jpeg", fit:BoxFit.cover)),
                        ),
                        SizedBox(width: 10,),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            Text(toDocards[index].title,
                                style:GoogleFonts.quicksand(fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(0, 0, 0, 1))
                               ),
                                 SizedBox(height: 10,),
                               Text(toDocards[index].description,
                                style:GoogleFonts.quicksand(fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(84, 84, 84, 1))
                                ),
                            ],
                          ),
                        ),
                             
                      ],
                    ),
                    SizedBox(height: 10,),
                     Row(
                          children: [
                             Text(toDocards[index].date,
                                style:GoogleFonts.quicksand(fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(84, 84, 84, 1))
                               ),
                               Spacer(),
                          Row(
                            children: [
                            GestureDetector(
                              onTap: () {
                                titleController.text=toDocards[index].title;
                                descriptionController.text=toDocards[index].description;
                                dateController.text=toDocards[index].date;
                                
                                showBottomSheet(true, toDocards[index]);
                              },
                              child: Icon(Icons.edit_outlined,color: Color.fromRGBO(2, 167, 177, 1),)),
                            SizedBox(width: 10,),
                            GestureDetector(
                              onTap: () {
                                int id=toDocards[index].id;
                                toDocards.remove(toDocards[index]);
                                TodoDatabase().deleteTodoItem(id);
                                setState(() {  });
                                
                              },
                              child: Icon(Icons.delete,color: Color.fromRGBO(2, 167, 177, 1),)),

                          ],
                        )
                       ],
                    ),
                    
                  ],
                 ),
               ),
            
            ),
          );
          
        },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            clearController();
            showBottomSheet(false);

        },
        backgroundColor: Color.fromRGBO(2, 167, 177, 1),
        shape: CircleBorder(),
        child: Icon(Icons.add,color: Color.fromRGBO(255, 255, 255, 1),size: 30,),
        ),
        
        
    );
  }
}