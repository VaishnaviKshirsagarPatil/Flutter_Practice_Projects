import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebaseauthentication/login_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen", style:  TextStyle(fontSize: 30),
        
        ),
        backgroundColor: Colors.indigo,
        actions: [
          IconButton(
            onPressed: (){
            FirebaseAuth.instance.signOut();
            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                builder:(context){
                  return LoginScreen();
                }), 
                (route)=>false,
                );

          }, icon: Icon(Icons.logout))
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Column(
            children: [
              SizedBox(
                width: 380,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Player Name",
                    hintText: "Enter Player Name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )
                  ),
                ),
              ),
              SizedBox(height: 10,),
               SizedBox(
                width: 380,
                 child: TextField(
                  decoration: InputDecoration(
                    labelText: "Player Jersy Number",
                    hintText: "Enter jersy Number",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )
                  ),
                           ),
               ),
               SizedBox(height: 10,),
               SizedBox(
                width: 380,
                 child: TextField(
                  decoration: InputDecoration(
                    labelText: "Player Image",
                    hintText: "Enter Player Image",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )
                  ),
                           ),
               ),
            
              SizedBox(height: 20,),
              ElevatedButton(onPressed: (){
          
          
              }, child: Text("Add Data"))
          
            ],
          ),
        ),
      ),
  
    );
  }
}