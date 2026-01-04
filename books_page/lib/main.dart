import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor:  Colors.white70,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 30.0),
          child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20,left: 15),
              child: const Text(
                'Hello, John',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 7, 36, 59)
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20,left: 15),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications,
                  size: 40,
                    color: Color.fromARGB(255, 10, 20, 62)
                ),
              ),
            ),
          ],
          ),
        ),
          SizedBox(height: 2,),
          
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  height: 50,
                  width: 350,
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    border: Border.all(color:  Color.fromARGB(255, 7, 36, 9),
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      children: [
                        Icon(Icons.search, color: Color.fromARGB(255, 7, 36, 59),size: 30,),
                        SizedBox(width: 5,),
                        Text("Search", style: TextStyle( color: Color.fromARGB(255, 7, 36, 59),fontSize: 20
                        ),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10,),

              Container(
                padding: const EdgeInsets.all(5),
                height: 50,
                width: 60,
                decoration: BoxDecoration(
                 shape: BoxShape.circle,
                  color:  Color.fromARGB(255, 7, 36, 59)
                  ),
                  child: Icon(Icons.settings,
                    color:  Colors.white
                ),
              ),
            ],
          ),
          SizedBox(height: 30,),
          
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                      color:  Color.fromARGB(255, 7, 36, 59),
                    borderRadius: BorderRadius.circular(30)
                  ),
                  child: Center(
                    child: Text("Motivational",style: TextStyle(color: Colors.white60,fontSize: 17,fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),

                ),

                SizedBox(width: 10,),

                Container(
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                     color: Colors.white70,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Center(
                    child: Text("Horror",style: TextStyle(color:  Color.fromARGB(255, 7, 36, 59),fontSize: 17,fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),

                ),
                SizedBox(width: 10,),

                Container(
                  height: 50,
                  width: 130,
                  decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Center(
                    child: Text("Mystrey",style: TextStyle(color:  Color.fromARGB(255, 7, 36, 59),fontSize: 17,fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),

                ),
              ],
            ),
          ),
          
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text("Trending Books",style: TextStyle(color:  Color.fromARGB(255, 7, 36, 59),fontSize: 30,fontWeight: FontWeight.w600)
            ),
          ),

          SizedBox(height: 15,),

          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              children: [
                Column(
                  children: [
                  Container(
                    height:200,
                    width: 130,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network("https://tse2.mm.bing.net/th?id=OIP.ycdCVj_YgHsEHFe1zNjiegHaLY&pid=Api&P=0&h=180",
                      fit: BoxFit.cover,
                      )
                    ),
                  ),
                    SizedBox(height: 20,),
                    Text(
                       "Dune",style: TextStyle(
                        color:  Color.fromARGB(255, 7, 36, 59),
                        fontSize: 25,
                        fontWeight: FontWeight.w500
                    ),
                    ),
                  ],
                ),
                SizedBox(width: 15,),
                Column(
                  children: [
                    Container(
                      height: 200,
                      width: 130,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network("https://th.bing.com/th/id/OIP.JXoPmk9M5Kxsv9rv1TqJmwAAAA?pid=ImgDet&w=203&h=284&c=7&dpr=1.3",
                            fit: BoxFit.cover,
                          )
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text(
                      "Cut",style: TextStyle(
                      color:  Color.fromARGB(255, 7, 36, 59),
                      fontSize: 25,
                        fontWeight: FontWeight.w500
                    ),
                    ),
                  ],
                ),
                SizedBox(width: 15,),
                Column(
                  children: [
                    Container(
                      height: 200,
                      width: 130,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network("https://tse3.mm.bing.net/th?id=OIP._wtlFcWUWT1uNqGZ8h8joAHaLM&pid=Api&P=0&h=180",
                            fit: BoxFit.cover,
                          )
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text(
                      "Ikigai",style: TextStyle(
                      color:  Color.fromARGB(255, 7, 36, 59),
                      fontSize: 25,
                      fontWeight: FontWeight.w500
                    ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text("My Library",style: TextStyle(color:  Color.fromARGB(255, 7, 36, 59),fontSize: 30,fontWeight: FontWeight.w600)
            ),
          ),

          SizedBox(height: 15,),

          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              children: [
                Column(
                  children: [
                    Container(
                      height:200,
                      width: 130,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network("https://tse3.mm.bing.net/th?id=OIP.vauFmYohrf8Yp1CpFpOw-wHaLW&pid=Api&P=0&h=180",
                            fit: BoxFit.cover,
                          )
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text(
                      "Atomic Habits",style: TextStyle(
                        color:  Color.fromARGB(255, 7, 36, 59),
                        fontSize: 20,
                        fontWeight: FontWeight.w500
                    ),
                    ),
                  ],
                ),
                SizedBox(width: 15,),
                Column(
                  children: [
                    Container(
                      height: 200,
                      width: 130,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network("https://th.bing.com/th/id/OIP.3h80nwjsHFTkIaX98UTREQAAAA?pid=ImgDet&w=183&h=282&c=7&dpr=1.3",
                            fit: BoxFit.cover,
                          )
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text(
                      "The Alchemist",style: TextStyle(
                        color:  Color.fromARGB(255, 7, 36, 59),
                        fontSize: 20,
                        fontWeight: FontWeight.w500
                    ),
                    ),
                  ],
                ),
                SizedBox(width: 15,),
                Column(
                  children: [
                    Container(
                      height: 200,
                      width: 130,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network("https://th.bing.com/th/id/OIP.MienKIbLI3IOsBHexzbhWwAAAA?pid=ImgDet&w=197&h=315&c=7&dpr=1.3",
                            fit: BoxFit.cover,
                          )
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text(
                      "Wings Of Fire",style: TextStyle(
                        color:  Color.fromARGB(255, 7, 36, 59),
                        fontSize: 20,
                        fontWeight: FontWeight.w500
                    ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      ),
    );
  }
}
