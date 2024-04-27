import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter2/oyun_ekrani.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {

  Future<bool> geriDonusTusu(BuildContext context) async{
    print("geri donus");
    return true;
  }

  int sayac=0;

  bool kontrol=false;

  Future<int> toplama( int x,int y) async{
    int t=x+y;
    return t;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // ilk yuklendıgınde bir kez calısır
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Ana Sayfa"),),
      body: PopScope(
        canPop: false,
        onPopInvoked: (didPop) => {
          print("test")
        },
        child: Center(
          child: Column (
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Sonuc: $sayac"),
              ElevatedButton(onPressed: (){
                setState(() {
                  sayac++;
                });
              }, child: Text("Click")),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>OyunEkrani(ad: "Ahmet",yas: 10,))).then((value) => {
                  print("geri donuldu")
                });
              }, child: Text("Başla")),
              Visibility(visible:kontrol,child: Text("Merhaba")),
              Text(kontrol?"x":"Merhaba",style: TextStyle(color: kontrol?Colors.red:Colors.blue),),
              ((){
                if(kontrol){
                  return const Text("data1");
                }else{
                  return const Text("data2");
                }
              }()),
              ElevatedButton(onPressed: (){
                setState(() {
                  kontrol=true;
                });
              }, child: Text("Durum 1 (true)")),
              ElevatedButton(onPressed: (){
                setState(() {
                  kontrol=false;
                });
              }, child: Text("Durum 2 (false)")),
              FutureBuilder<int>(
                future: toplama(1, 3),
                builder: (context,snapshot){
                  if(snapshot.hasError){
                    return const Text("hata");
                  }
                  if(snapshot.hasData){
                    return Text(" Sonuc: ${snapshot.data}");
                  }else{
                    return const Text("sonuc yok");
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
