import 'package:flutter/material.dart';
import 'package:flutter2/sonuc_ekrani.dart';

class OyunEkrani extends StatefulWidget {
  String ad;
  int yas;

  OyunEkrani({required this.ad,required this.yas});

  @override
  State<OyunEkrani> createState() => _OyunEkraniState();
}

class _OyunEkraniState extends State<OyunEkrani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Oyun Ekranı"),),
      body: Center(
        child: Column (
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("${widget.ad}-${widget.yas}"),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SonucEkrani()));
            }, child: Text("Bitti")),
          ],
        ),
      ),
    );
  }
}
