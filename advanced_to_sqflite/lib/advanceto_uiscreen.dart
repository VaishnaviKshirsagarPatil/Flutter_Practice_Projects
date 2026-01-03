import 'dart:developer';

import 'package:advanced_to_sqflite/advtodomodel.dart';
import 'package:advanced_to_sqflite/database.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: AdvancetoUiscreen(),
  ));
}

class AdvancetoUiscreen extends StatefulWidget {
  const AdvancetoUiscreen({super.key});

  @override
  State<AdvancetoUiscreen> createState() => _AdvancetoUiscreenState();
}

class _AdvancetoUiscreenState extends State<AdvancetoUiscreen> {
  TextEditingController titleController=TextEditingController();
TextEditingController descriptionController=TextEditingController();
TextEditingController dateController=TextEditingController();

List<Advtodomodel> advToDocards=[];

  @override
  void initState(){
    super.initState();
    getData();
      
  }

  void getData() async{
    List<Map> cardList=await TodoDatabase().getTodoItems();
    log("CARD LIST: $cardList");
    for(var element in cardList){
     advToDocards.add(
        Advtodomodel(
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

  void submit(bool doEdit,[Advtodomodel? obj]){
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
     advToDocards.add(
        Advtodomodel(
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

void showBottomSheet(bool doEdit, [Advtodomodel? obj]){
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
                    color: Color.fromRGBO(111, 81, 255, 1))
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
                     borderSide: BorderSide(color: Color.fromRGBO(111, 81, 255, 1), width: 2), 
                   ),
                ),
              ),
              SizedBox(height: 10,),
               Text("Description",
                  style:GoogleFonts.quicksand(fontSize: 18,
                   fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(111, 81, 255, 1))
              ),
                TextField(
                  controller: descriptionController,
                   textAlign: TextAlign.start,
                      decoration: InputDecoration(
                       hintText: "Enter description",
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
                     borderSide: BorderSide(color: Color.fromRGBO(111, 81, 255, 1), width: 2), 
                   ),
                    contentPadding: EdgeInsets.symmetric(vertical: 40, horizontal: 40), 
                ),
              ),
              
                SizedBox(height: 10,),
                 Text("Date",
                      style:GoogleFonts.quicksand(fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(111, 81, 255, 1))
                 ),
                TextField(
                  controller: dateController,
                decoration: InputDecoration(
                  hintText:"Enter date",
                   hintStyle: TextStyle(color: const Color.fromARGB(255, 119, 118, 118)), 
                  suffixIcon: Icon(Icons.calendar_month_rounded,color: Color.fromRGBO(111, 81, 255, 1)),

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
                     borderSide: BorderSide(color: Color.fromRGBO(111, 81, 255, 1), width: 2), 
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
                  SizedBox(
                    height: 55,
                    child: ElevatedButton(onPressed: (){
                      if(doEdit){
                        submit(doEdit, obj);
                      }else{
                        submit(doEdit);
                      }
                    
                    }, 
                    style: ElevatedButton.styleFrom(backgroundColor: Color.fromRGBO(111, 81, 255, 1),),
                       child:  Text("Submit",
                            style:GoogleFonts.quicksand(fontSize:20,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(255, 255, 255, 1),             
                            ),                
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
      backgroundColor: const Color.fromRGBO(111, 81, 255, 1),
      body: Padding(
        padding: const EdgeInsets.only(top: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                "Good Morning",
                style: GoogleFonts.quicksand(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                "vaishnavi",
                style: GoogleFonts.quicksand(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),

            const SizedBox(height: 30),
            Expanded(
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                      color: Color.fromRGBO(217, 217, 217, 1),
                    ),
                    padding: const EdgeInsets.all(20),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        "CREATE TO-DO LIST",
                        style: GoogleFonts.quicksand(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),

                  Positioned(
                    top: 60,
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                        ),
                        color: Colors.white,
                      ),
                      child: ListView.builder(
                        itemCount: advToDocards.length,
                        itemBuilder: (context, index){
                          return Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Container(
                                      width: 360,
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.indigo,),
                                        borderRadius: BorderRadius.circular(10),
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.black.withOpacity(0.3),
                                              spreadRadius: 2,
                                              blurRadius: 6,   
                                              offset: const Offset(3, 3), 
                                            ),
                                          ],
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Row(
                                                children: [
                                                  Container(
                                                    height: 70,
                                                    width: 70,
                                                    decoration: BoxDecoration(
                                                     borderRadius: BorderRadius.circular(35),
                                                     color:  Color.fromRGBO(194, 189, 189, 1)
                                                    ),
                                                    child: ClipRRect(
                                                      borderRadius:BorderRadius.circular(35),
                                                      child: Image.network("https://tse3.mm.bing.net/th/id/OIP.E3hAtxeSOQm_Oifh7JhilwHaHa?pid=Api&P=0&h=180",
                                                      fit: BoxFit.cover,),
                                                    ),
                                                  ),
                                                  SizedBox(width: 15,),
                                                  Expanded(
                                                    child: Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                      Text(
                                                      advToDocards[index].title,
                                                      style: GoogleFonts.quicksand(
                                                        color: Colors.black,
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.w600,
                                                      ),
                                                    ),
                                                      SizedBox(height: 10,),
                                                     Text(
                                                      advToDocards[index].description,
                                                      style: GoogleFonts.quicksand(
                                                        color: Colors.black,
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.w600,
                                                      ),
                                                    ),
                                                   ],
                                                    ),
                                                  ),
                                                 
                                                ],
                                              ),
                                             ),
                                              Row(
                                                 children: [
                                                      Text(
                                                     advToDocards[index].date,
                                                      style: GoogleFonts.quicksand(
                                                        color: Colors.black,
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.w600,
                                                      ),
                                                    ),
                                                    ],
                                             )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                    SizedBox(width: 20,),
                                  Column(
                                    children: [
                                          Container(
                                                   height: 50,
                                                  width: 50,
                                                decoration: BoxDecoration(
                                               borderRadius: BorderRadius.circular(30),
                                              color: const Color.fromRGBO(111, 81, 255, 1)
                                                ),
                                                child: GestureDetector(
                                                   onTap: () {
                                                    titleController.text=advToDocards[index].title;
                                                    descriptionController.text=advToDocards[index].description;
                                                    dateController.text=advToDocards[index].date;
                                                    
                                                    showBottomSheet(true, advToDocards[index]);
                                                    },

                                                  child: Icon(Icons.edit,color: Colors.white,)),
                                           ),
                                           SizedBox(height: 15,),
                                           Container(
                                               height: 50,
                                               width: 50,
                                               decoration: BoxDecoration(
                                               borderRadius: BorderRadius.circular(30),
                                               color: const Color.fromRGBO(111, 81, 255, 1)
                                                ),
                                             child: GestureDetector(
                                              onTap: () {
                                                   int id=advToDocards[index].id;
                                                   advToDocards.removeAt(index);
                                                   TodoDatabase().deleteTodoItem(id);
                                                   setState(() {  });

                                              },
                                              child: Icon(Icons.delete_outline_outlined,color: Colors.white,)),
                                        ),      
                                    ],
                                  )
                                ],
                              )

                            ],
                          );
                        })
                    ),

                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: const Color.fromRGBO(111, 81, 255, 1),
          shape: CircleBorder(),
        onPressed: () {
          showBottomSheet(false);
        },
        child: const Icon(Icons.add, color: Colors.white,size: 35,),
      ),
    );
  }
}
