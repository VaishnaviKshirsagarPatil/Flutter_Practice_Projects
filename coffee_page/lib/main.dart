import 'package:flutter/material.dart';void main() {
  runApp(const MainApp());
}
class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
         home: IcedMochaPage(),
    );
  }
}class IcedMochaPage extends StatefulWidget {
  const IcedMochaPage({super.key});

  @override
  State<IcedMochaPage> createState() => _IcedMochaPageState();
}
class _IcedMochaPageState extends State<IcedMochaPage> {
  int quantity = 1;

  void increment() {
    setState(() {
      quantity++;
    });
  }

  void decrement() {
    if (quantity > 1) {
      setState(() {
        quantity--;
      });
    }
  }

     @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 430,
            width: 500,
            alignment: Alignment.topCenter,
            decoration: const BoxDecoration(
              color: Color.fromARGB(235, 190, 110, 39),
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(150)),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Icon(Icons.arrow_back, color: Colors.white, size: 30),
                      SizedBox(width: 270),
                      Icon(Icons.favorite_border, color: Colors.white, size: 30),
                    ],
                  ),
                  Container(
                    height: 335,
                    width: 350,
                    alignment: Alignment.center,
                    child: Image.asset("assets/th1.png", fit: BoxFit.cover, height: 400, width: 350),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Iced Mocha",
                    style: TextStyle(
                        fontSize: 37,
                        color: Color.fromARGB(255, 32, 16, 1),
                        fontWeight: FontWeight.w900)),
                Text("₹150.00",
                    style: TextStyle(
                        fontSize: 30,
                        color: Color.fromARGB(255, 32, 16, 1),
                        fontWeight: FontWeight.w600)),
              ],
            ),
          ),
          const SizedBox(height: 15),
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Text("Cup size",
                style: TextStyle(
                    color: Color.fromARGB(255, 32, 16, 1),
                    fontSize: 22,
                    fontWeight: FontWeight.w700)),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 45),
                height: 40,
                width: 100,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: const Color.fromARGB(255, 32, 16, 1), width: 2.0)),
                child: const Text("Small",
                    style: TextStyle(
                      color: Color.fromARGB(255, 32, 16, 1),
                      fontSize: 22,
                    )),
              ),
              const SizedBox(width: 20),
              Container(
                height: 40,
                width: 130,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 32, 16, 1),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: const Color.fromARGB(255, 32, 16, 1), width: 2.0)),
                child: const Text("Medium",
                    style: TextStyle(color: Colors.white, fontSize: 22)),
              ),
              const SizedBox(width: 20),
              Container(
                  height: 40,
                  width: 100,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border:
                          Border.all(color: const Color.fromARGB(255, 32, 16, 1), width: 2.0)),
                  child: const Text("Large",
                      style: TextStyle(color: Color.fromARGB(255, 32, 16, 1), fontSize: 22))),
            ],
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text("Description",
                style: TextStyle(
                    color: Color.fromARGB(255, 32, 16, 1),
                    fontSize: 22,
                    fontWeight: FontWeight.w700)),
          ),
          const SizedBox(height: 12),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Coffee is a rich and aromatic beverage made from roasted coffee beans. "
               "Known for its bold flavor and energizing effect, coffee is enjoyed in many "
                "forms around the world hot, iced, black, or with milk and sugar.",
              style: TextStyle(
                  color: Color.fromARGB(255, 32, 16, 1),
                  fontSize: 17,
                  fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                const Text(
                  "280 Cal.",
                  style: TextStyle(
                      color: Color.fromARGB(255, 32, 16, 1),
                      fontSize: 25,
                      fontWeight: FontWeight.w800),
                ),
                const SizedBox(width: 190),
                GestureDetector(
                  onTap: decrement,
                  child: Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                          color: const Color.fromARGB(255, 32, 16, 1), width: 2.0),
                    ),
                    child: const Icon(Icons.remove,
                        color: Color.fromARGB(255, 32, 16, 15), size: 25),
                  ),
                ),
                const SizedBox(width: 15),
                Text(
                  "$quantity",
                  style: const TextStyle(
                      color: Color.fromARGB(255, 32, 16, 1),
                      fontSize: 27,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 15),
                GestureDetector(
                  onTap: increment,
                  child: Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 32, 16, 1),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                          color: const Color.fromARGB(255, 32, 16, 1), width: 2.0),
                    ),
                    child: const Icon(Icons.add, color: Colors.white, size: 25),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          Container(
            margin: const EdgeInsets.only(left: 60, right: 60),
            height: 70,
            width: 330,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 32, 16, 1),
                borderRadius: BorderRadius.circular(15)),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Add To Cart",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w400)),
            ),
          )
        ],
      ),
    );
  }
}