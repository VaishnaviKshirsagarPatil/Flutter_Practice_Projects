import 'package:flutter/material.dart';

class Trek {
  final String name;
  final String location;
  final String duration;
  final String distance;
  final String difficulty;
  final String imageUrl;
  final String city;

  Trek({
    required this.name,
    required this.location,
    required this.duration,
    required this.distance,
    required this.difficulty,
    required this.imageUrl,
    required this.city,
  });
}

// ✅ Main entry point
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Trek App',
      theme: ThemeData.dark(),
      home: AllTreksPage(),
    );
  }
}

class AllTreksPage extends StatefulWidget {
  @override
  _AllTreksPageState createState() => _AllTreksPageState();
}

class _AllTreksPageState extends State<AllTreksPage> {
  String selectedCity = "All";
  String searchQuery = "";

  final List<String> cities = ["All", "Pune", "Nashik", "Raigad", "Ahmednagar"];

  final List<Trek> treks = [
    Trek(
      name: "Asheri Fort",
      location: "Khadkawane, Palghar",
      duration: "4 Hrs",
      distance: "3.84 Km",
      difficulty: "Moderate",
      imageUrl:
          "https://tse2.mm.bing.net/th/id/OIP.izRRLUl8xdbRUdlGoJoLLgHaE8?pid=Api&P=0&h=180",
      city: "Nashik",
    ),
    Trek(
      name: "Banurgad",
      location: "Banur, Khanapur",
      duration: "15 min",
      distance: "0.81 Km",
      difficulty: "Moderate",
      imageUrl:
          "https://upload.wikimedia.org/wikipedia/commons/0/0b/Banurgad_Fort.jpg",
      city: "Raigad",
    ),
    Trek(
      name: "Bhairavad",
      location: "Ganeshpur, Bhiwandi",
      duration: "7 Hrs",
      distance: "3.55 Km",
      difficulty: "Difficult",
      imageUrl:
          "https://upload.wikimedia.org/wikipedia/commons/4/41/Bhairavgad.jpg",
      city: "Pune",
    ),
    Trek(
      name: "Ghangad",
      location: "Ekole, Pune",
      duration: "45 min",
      distance: "3.11 Km",
      difficulty: "Easy",
      imageUrl:
          "https://upload.wikimedia.org/wikipedia/commons/a/a4/Ghangad_fort.jpg",
      city: "Pune",
    ),
    Trek(
      name: "Achala",
      location: "Dagad Pimpri, Nashik",
      duration: "1.5 Hrs",
      distance: "3.55 Km",
      difficulty: "Moderate",
      imageUrl:
          "https://upload.wikimedia.org/wikipedia/commons/1/1d/Achala_Fort.jpg",
      city: "Nashik",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    // Filter treks by city and search query
    List<Trek> filteredTreks = treks.where((t) {
      bool matchesCity = selectedCity == "All" || t.city == selectedCity;
      bool matchesSearch =
          t.name.toLowerCase().contains(searchQuery.toLowerCase());
      return matchesCity && matchesSearch;
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text("All Treks (${filteredTreks.length})"),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          // Search bar
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search trails, forts...",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onChanged: (query) {
                setState(() {
                  searchQuery = query;
                });
              },
            ),
          ),

          // City filter
          Container(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: cities.length,
              itemBuilder: (context, index) {
                String city = cities[index];
                bool isSelected = city == selectedCity;
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedCity = city;
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 6),
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                    decoration: BoxDecoration(
                      color: isSelected ? Colors.blue : Colors.grey[800],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        city,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),

          // Treks Grid
         // Treks Grid
Expanded(
  child: GridView.builder(
    padding: EdgeInsets.all(10),
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      childAspectRatio: 0.7, // Adjust ratio for better fit
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
    ),
    itemCount: filteredTreks.length,
    itemBuilder: (context, index) {
      final trek = filteredTreks[index];
      return Card(
        color: Colors.black,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image takes fixed height
            ClipRRect(
              borderRadius:
                  BorderRadius.vertical(top: Radius.circular(12)),
              child: Image.network(
                trek.imageUrl,
                height: 120,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            // Flexible content
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Name (wrap if long)
                    Text(
                      trek.name,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 2),
                    // Location (wrap if long)
                    Text(
                      trek.location,
                      style: TextStyle(
                          color: Colors.grey, fontSize: 12),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 4),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(trek.duration,
                            style: TextStyle(color: Colors.white70)),
                        Text(trek.distance,
                            style: TextStyle(color: Colors.white70)),
                      ],
                    ),
                    Spacer(), // Push difficulty label to bottom
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: trek.difficulty == "Easy"
                            ? Colors.green
                            : trek.difficulty == "Moderate"
                                ? Colors.orange
                                : Colors.red,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        trek.difficulty,
                        style: TextStyle(
                            color: Colors.white, fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    },
  ),
),

        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.terrain), label: "All Treks"),
          BottomNavigationBarItem(icon: Icon(Icons.map), label: "Map"),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: "Community"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting"),
        ],
      ),
    );
  }
}
