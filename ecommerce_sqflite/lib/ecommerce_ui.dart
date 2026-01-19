import 'package:ecommerce_sqflite/database.dart';
import 'package:ecommerce_sqflite/ecommerce_model.dart';
import 'package:ecommerce_sqflite/favouritelist.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(Screen1());
}
class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {

  TextEditingController nameController=TextEditingController();
   TextEditingController descriptionController=TextEditingController();
    TextEditingController priceController=TextEditingController();
     TextEditingController imageController=TextEditingController();

     List<EcommerceModel>productList=[];
     @override
  // void initState(){
  //   super.initState();
  //   getData();
      
  // }

  // void getData() async{
  //   List<Map> cardList=await EcommerceDatabase().getTodoItems();
  //   log("CARD LIST: $cardList");
  //   for(var element in cardList){
  //     toDocards.add(
  //       ToDoModel(
  //         title: element['title'], 
  //         description: element['description'],
  //         date: element['date'],
  //         id: element['id'],
  //         ),
  //     );

  //   }
  //   setState(() { });
  // }


  //   void clearController(){
  //   nameController.clear();
  //   descriptionController.clear();
  //   priceController.clear();
  //   imageController.clear();
  // }

//   void submit(bool doEdit,[EcommerceModel? obj]){
//     if(nameController.text.isNotEmpty &&
//      descriptionController.text.isNotEmpty &&
//      priceController.text.isNotEmpty){ 

//     if(doEdit){
//       //Edit
//       obj!.name=nameController.text;
//       obj.description=descriptionController.text;
//       obj.price=priceController.text;

//     }else{
//       //ADD
//      productList.add(
//         EcommerceModel(
//         name: nameController.text,
//         description: descriptionController.text,
//         price: priceController.text, 
//         image: imageController.text,
//         ),
//         );
           
//     }
//    // clearController();
//     Navigator.of(context).pop();
//     setState(() { });
    
//   }
// //  Navigator.of(context).pop();
// }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("E-commerce Application",
        style: GoogleFonts.poppins(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w600
        ),),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Favouritelist()));
              },
              child: Icon(Icons.menu_open_rounded,size: 30,color: Colors.white,)),
          ),
        ],
         backgroundColor: Color.fromRGBO(2, 167, 177, 1),
         centerTitle: true,
      ),
       body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, 
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.7, 
          ),
          itemCount: productList.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.network(
                          productList[index].image,
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      productList[index].name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                        productList[index].description,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Colors.grey[600], fontSize: 12),
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        Text(
                           productList[index].price,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.teal,
                          ),
                        ),
                        Spacer(),
                        Icon(Icons.favorite_border, color: Colors.black,)
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
      
     
      floatingActionButton: FloatingActionButton(
        onPressed: () {
        BottomSheet(false);
        },
        backgroundColor: Color.fromRGBO(2, 167, 177, 1),
        child: Icon(Icons.add, color: Colors.white, size: 40),
      ),

      
    );
  }
  // ignore: non_constant_identifier_names
  void BottomSheet(bool doEdit, [EcommerceModel? obj]){
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
                Text("E-commerce List",
                  style:GoogleFonts.quicksand(fontSize: 18,
                  fontWeight: FontWeight.w800,
                  color: Color.fromRGBO(0, 0, 0, 1))
                  ),
              ],
            ),
                SizedBox(height: 10,),
               Text("Product Name",
                  style:GoogleFonts.quicksand(fontSize: 18,
                   fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(2, 167, 177, 1))
              ),
                TextField(
                   controller: nameController,
                      decoration: InputDecoration(
                        hintText: "Enter tour Name",
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
               Text(" Product Description",
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
                  // contentPadding: EdgeInsets.symmetric(vertical: 25, horizontal: 25), 
                ),
              ),
              
                SizedBox(height: 10,),
                 Text(" Product Price",
                      style:GoogleFonts.quicksand(fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(2, 167, 177, 1))
                 ),
                TextField(
                 controller: priceController,
                decoration: InputDecoration(
                  hintText:"Enter Price",
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
               Text("Product Image",
                  style:GoogleFonts.quicksand(fontSize: 18,
                   fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(2, 167, 177, 1))
              ),
                TextField(
                  controller: imageController,
                      decoration: InputDecoration(
                        hintText: "Paste Image Link",
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
              
               SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 SizedBox(
                          height: 55,
                          child: ElevatedButton(
                            onPressed: () {
                              if (nameController.text.isEmpty &&
                                  descriptionController.text.isEmpty &&
                                  priceController.text.isEmpty &&
                                  imageController.text.isEmpty) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text("Please fill in all fields"),
                                    backgroundColor: Colors.red,
                                  ),
                                );
                              } else {
                                productList.add(
                                  EcommerceModel(
                                    name: nameController.text,
                                    description: descriptionController.text,
                                    price: priceController.text,
                                    image: imageController.text,
                                  ),
                                );

                                // Clear inputs
                                nameController.clear();
                                descriptionController.clear();
                                priceController.clear();
                                imageController.clear();

                                Navigator.of(context).pop();
                                setState(() {});
                              }
                            },
                            child: const Text("Add Product"),
                            
                          ),
                          
                        ),            

                ],
              ), 
              SizedBox(height: 20,)   
        ],
      ),
    );

       });
  }
}