import 'package:flutter/material.dart';
import 'package:flutter2/bottom_nav_kullanimi/sayfa_bir.dart';
import 'package:flutter2/bottom_nav_kullanimi/sayfa_iki.dart';
import 'package:flutter2/bottom_nav_kullanimi/sayfa_uc.dart';

class BotNavSayfa extends StatefulWidget {
  const BotNavSayfa({super.key});

  @override
  State<BotNavSayfa> createState() => _BotNavSayfaState();
}

class _BotNavSayfaState extends State<BotNavSayfa> {

  int secilenIndex=0;
  var sayfalar=[SayfaBir(),SayfaIki(),SayfaUc()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bottom Navi"),backgroundColor:Colors.brown),
      body: sayfalar[secilenIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.looks_one_outlined),label: "Bir"),
          BottomNavigationBarItem(icon: Icon(Icons.looks_two_outlined),label: "İki"),
          BottomNavigationBarItem(icon: Icon(Icons.looks_3_outlined),label: "Uc"),

        ],
        currentIndex: secilenIndex,
        backgroundColor: Colors.greenAccent,
        selectedItemColor: Colors.amberAccent,
        unselectedItemColor: Colors.red,
        onTap: (index){
          setState(() {
            secilenIndex=index;
          });
        },
      ),
    );
  }
}
