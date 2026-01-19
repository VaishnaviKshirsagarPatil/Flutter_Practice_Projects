import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  int currentIndex = 0;

  List<Map<String, String>> players = [
    {
      "name": "Virat Kohli",
      "image":
          "https://tse4.mm.bing.net/th?id=OIP.gTtkRuheG1vAgVXLRM_KcgHaHa&pid=Api&P=0&h=180",
      "age": "35",
      "team": "India",
      "role": "Batsman"
    },
    {
      "name": "Rohit Sharma",
      "image":
          "https://tse4.mm.bing.net/th?id=OIP.yM2BhShB05y97DW_sjn1AwHaHa&pid=Api&P=0&h=180",
      "age": "36",
      "team": "India",
      "role": "Batsman"
    },
    {
      "name": "MS Dhoni",
      "image":
          "https://tse1.mm.bing.net/th?id=OIP.xqdv8qjbRG39ZEohog1v3gHaHa&pid=Api&P=0&h=180",
      "age": "42",
      "team": "India",
      "role": "Wicketkeeper"
    },
  ];

  @override
  Widget build(BuildContext context) {
    var currentPlayer = players[currentIndex];

    return MaterialApp(
       debugShowCheckedModeBanner: false,
       home: Scaffold(
          appBar: AppBar(
          title: const Text("Display Image List", style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue.shade100, Colors.blue.shade300],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.blueAccent, width: 3),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 4,
                      blurRadius: 10,
                      offset: Offset(0, 6),
                    ),
                  ],
                
                ),
          
                 child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    currentPlayer["image"]!,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Text(
                currentPlayer["name"]!,
                style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Text("Team: ${currentPlayer["team"]}",
                  style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              Text("Role: ${currentPlayer["role"]}",
                  style: const TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              Text("Age: ${currentPlayer["age"]}",
                  style: const TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    currentIndex = (currentIndex + 1) % players.length;
                  });
                },
                child: const Text(
                  "Next",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
