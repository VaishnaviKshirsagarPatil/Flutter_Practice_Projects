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
      appBar: AppBar(
        leading: Icon(Icons.chevron_left,size: 40,),
        title: Column(
          mainAxisSize: MainAxisSize.min, // ensures the column takes minimal vertical space
          children: [
            Text(
              "Recommended",
              style: TextStyle(
                color: Colors.deepPurpleAccent.shade400,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        centerTitle: true,

      ),
        body:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Divider(
                color: Colors.grey,
                thickness: 2,
                // space from right
              ),
              SizedBox(height: 10,),
               Padding(
                 padding: const EdgeInsets.only(left: 15),
                 child: Text("Start a new career",style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),),
               ),
              SizedBox(height: 15,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 140,
                        decoration: BoxDecoration(
                          color: Colors.deepPurpleAccent.shade400,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Center(
                            child: Text("Data Science",style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold),
                            ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        height: 50,
                        width: 200,
                        decoration: BoxDecoration(
                          color: Colors.deepPurple.shade100,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Center(
                          child: Text("Machine Learning",style: TextStyle(color: Colors.deepPurpleAccent.shade400,fontSize: 17,fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        height: 50,
                        width: 140,
                        decoration: BoxDecoration(
                          color: Colors.deepPurple.shade100,
                          borderRadius: BorderRadius.circular(25),
                        ),
                         child: Center(
                          child: Text("Big Data",style: TextStyle(color: Colors.deepPurpleAccent.shade400,fontSize: 17,fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        height: 50,
                        width: 140,
                        decoration: BoxDecoration(
                          color: Colors.deepPurple.shade100,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Center(
                          child: Text("Devops",style: TextStyle(color: Colors.deepPurpleAccent.shade400,fontSize: 17,fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                   shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network("https://tse4.mm.bing.net/th?id=OIP.WchLCNhLkCThqfMLJrg0ewHaFb&pid=Api&P=0&h=180s",
                              width: 140,
                              height: 140,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(width: 10,),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text("Data Science",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(width: 45,),
                                    Text("17 Courses",style: TextStyle(color: Colors.grey.shade600,fontSize: 14,fontWeight: FontWeight.w800),
                                    ),
                                  ],
                                ),
                                Text("Harvard University",style: TextStyle(color: Colors.grey.shade600,fontSize: 15,fontWeight: FontWeight.w700),),
                                SizedBox(height: 10,),

                                Text("Lorem ipsum dolorc.",style: TextStyle(color: Colors.grey.shade800,fontSize: 15,fontWeight: FontWeight.w700),),
                                SizedBox(height: 12,),
                                Row(
                                  children: [
                                    Container(
                                      height: 30,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        color: Colors.deepPurple.shade100,
                                        borderRadius: BorderRadius.circular(1),
                                      ),
                                      child: Center(child: Text("Data Science",style: TextStyle(fontSize: 12,color: Colors.deepPurpleAccent.shade400,fontWeight: FontWeight.w700),)),
                                    ),
                                    SizedBox(width: 10),
                                    Container(
                                      height: 30,
                                      width: 120,
                                      decoration: BoxDecoration(
                                        color: Colors.deepPurple.shade100,
                                        borderRadius: BorderRadius.circular(1),
                                      ),
                                      child: Center(child: Text("Machines Learning",style: TextStyle(fontSize: 12,color: Colors.deepPurpleAccent.shade400,fontWeight: FontWeight.w700),)),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network("https://tse3.mm.bing.net/th?id=OIP.135lGKjg5ko-qRLaBDhImgHaEK&pid=Api&P=0&h=180",
                            width: 140,
                            height: 140,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 5,),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text("Machine Learning",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(width: 10,),
                                  Text("17 Courses",style: TextStyle(color: Colors.grey.shade600,fontSize: 14,fontWeight: FontWeight.w800),
                                  ),
                                ],
                              ),
                              Text("Harvard University",style: TextStyle(color: Colors.grey.shade600,fontSize: 15,fontWeight: FontWeight.w700),),
                              SizedBox(height: 10,),

                              Text("Lorem ipsum dolorc.",style: TextStyle(color: Colors.grey.shade800,fontSize: 15,fontWeight: FontWeight.w700),),
                              SizedBox(height: 12,),
                              Row(
                                children: [
                                  Container(
                                    height: 30,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      color: Colors.deepPurple.shade100,
                                      borderRadius: BorderRadius.circular(1),
                                    ),
                                    child: Center(child: Text("Data Science",style: TextStyle(fontSize: 12,color: Colors.deepPurpleAccent.shade400,fontWeight: FontWeight.w700),)),
                                  ),
                                  SizedBox(width: 10,),
                                  Container(
                                    height: 30,
                                    width: 120,
                                    decoration: BoxDecoration(
                                      color: Colors.deepPurple.shade100,
                                      borderRadius: BorderRadius.circular(1),
                                    ),
                                    child: Center(child: Text("Machines Learning",style: TextStyle(fontSize: 12,color: Colors.deepPurpleAccent.shade400,fontWeight: FontWeight.w700),)),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network("https://tse2.mm.bing.net/th?id=OIP.QdkPx-jACp4qwndh1uKIPgHaEK&pid=Api&P=0&h=180",
                            width: 140,
                            height: 140,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 5,),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text("Big Data",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(width: 90,),
                                  Text("17 Courses",style: TextStyle(color: Colors.grey.shade600,fontSize: 14,fontWeight: FontWeight.w800),
                                  ),
                                ],
                              ),
                              Text("Harvard University",style: TextStyle(color: Colors.grey.shade600,fontSize: 15,fontWeight: FontWeight.w700),),
                              SizedBox(height: 10,),

                              Text("Lorem ipsum dolorc.",style: TextStyle(color: Colors.grey.shade800,fontSize: 15,fontWeight: FontWeight.w700),),
                              SizedBox(height: 12,),
                              Row(
                                children: [
                                  Container(
                                    height: 30,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      color: Colors.deepPurple.shade100,
                                      borderRadius: BorderRadius.circular(1),
                                    ),
                                    child: Center(child: Text("Data Science",style: TextStyle(fontSize: 12,color: Colors.deepPurpleAccent.shade400,fontWeight: FontWeight.w700),)),
                                  ),
                                  SizedBox(width: 10,),
                                  Container(
                                    height: 30,
                                    width: 120,
                                    decoration: BoxDecoration(
                                      color: Colors.deepPurple.shade100,
                                      borderRadius: BorderRadius.circular(1),
                                    ),
                                    child: Center(child: Text("Machines Learning",style: TextStyle(fontSize: 12,color: Colors.deepPurpleAccent.shade400,fontWeight: FontWeight.w700),)),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network("https://tse4.mm.bing.net/th?id=OIP.k2x8JkfC-kmR4e_mDO22AwHaEM&pid=Api&P=0&h=180",
                            width: 140,
                            height: 140,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 5,),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text("Devops",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(width: 95,),
                                  Text("17 Courses",style: TextStyle(color: Colors.grey.shade600,fontSize: 14,fontWeight: FontWeight.w800),
                                  ),
                                ],
                              ),
                              Text("Harvard University",style: TextStyle(color: Colors.grey.shade600,fontSize: 15,fontWeight: FontWeight.w700),),
                              SizedBox(height: 10,),

                              Text("Lorem ipsum dolorc.",style: TextStyle(color: Colors.grey.shade800,fontSize: 15,fontWeight: FontWeight.w700),),
                              SizedBox(height: 12,),
                              Row(
                                children: [
                                  Container(
                                    height: 30,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      color: Colors.deepPurple.shade100,
                                      borderRadius: BorderRadius.circular(1),
                                    ),
                                    child: Center(child: Text("Data Science",style: TextStyle(fontSize: 12,color: Colors.deepPurpleAccent.shade400,fontWeight: FontWeight.w700),)),
                                  ),
                                  SizedBox(width: 10,),
                                  Container(
                                    height: 30,
                                    width: 120,
                                    decoration: BoxDecoration(
                                      color: Colors.deepPurple.shade100,
                                      borderRadius: BorderRadius.circular(1),
                                    ),
                                    child: Center(child: Text("Machines Learning",style: TextStyle(fontSize: 12,color: Colors.deepPurpleAccent.shade400,fontWeight: FontWeight.w700),)),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),

            ],
          ),
      ),
    );
  }
}
