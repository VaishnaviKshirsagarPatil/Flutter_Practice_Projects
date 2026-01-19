import 'package:drawer/first_page.dart';
import 'package:drawer/notification_page.dart';
import 'package:drawer/second_page.dart';
import 'package:drawer/third_page.dart';
import 'package:flutter/material.dart';
class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.deepPurple[300],
     ),

      drawer: Drawer(
        child: Container(
          color: Colors.deepPurple[100],
          child: ListView(
            children: [
              DrawerHeader(
                child: CircleAvatar(
                  backgroundColor: Colors.white60,
                  radius: 52,
                  child: Center(
                    child: ClipOval(
                      child: Image.asset(
                        'assets/images/avtar.png', // Replace with your logo's path
                        fit: BoxFit.cover, // Ensures the image is cropped correctly
                      ),
                    ),
                  ),
                ),
              ),
              // Your other drawer items

            //  Divider(color: Colors.grey,),

                ListTile(
                       leading: Icon(Icons.home),
                      title:Text("Home",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),
                         ) ,
                  
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Firstpage()));
                        },
                       ),
                  Divider(color: Colors.grey,),

                ListTile(
                     leading: Icon(Icons.favorite_border),
                     title:Text("Favourite",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),
                     ) ,

                    onTap: (){
                     Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Secondpage()));
                     },
                     ),

                 Divider(color: Colors.grey,),

              ListTile(
                leading: Icon(Icons.update),
                title: Text("Update",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Thirdpage()));
                },
              ),

              Divider(color: Colors.grey,),

              ListTile(
                leading: Icon(Icons.notification_add),
                title: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Notificationpage()));
                  },
                  child: Text("Notification",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),
                  ),
                ),
              ),


            ],
          ),
        ),
      ),
    // endDrawer: Drawer(),
    );
  }
}
