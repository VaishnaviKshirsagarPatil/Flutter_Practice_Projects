import 'package:flutter/material.dart';

void main(){
  runApp(Favouritelist());
}
class Favouritelist extends StatefulWidget {
  const Favouritelist({super.key});

  @override
  State<Favouritelist> createState() => _FavouritelistState();
}

class _FavouritelistState extends State<Favouritelist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),

    );
  }
}