import 'package:flutter/material.dart';

class Etkilesim extends StatefulWidget {
  const Etkilesim({super.key});

  @override
  State<Etkilesim> createState() => _EtkilesimState();
}

class _EtkilesimState extends State<Etkilesim> {

  var tfControl=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Etkilesim"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                    content: Text("Silmek İstiyor Musunuz?"),
                    action: SnackBarAction( label: "Evet",onPressed: (){
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Silindi")));
                    },),
                )
              );
            }, child: Text("SnackBar")),
            ElevatedButton(onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Silmek İstiyor Musunuz?",style: TextStyle(color: Colors.pink),),
                    backgroundColor: Colors.white60,
                    action: SnackBarAction(label: "Evet",textColor: Colors.amberAccent,onPressed: (){
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Silindi")));
                    },),
                  ),
              );
            }, child: Text("SnackBar 2 ")),
            ElevatedButton(onPressed: (){
              showDialog(context: context,
                  builder: (BuildContext context){
                    return AlertDialog(
                      title: Text("Kayıt"),
                      content: Text("İçerik"),
                      actions: [
                        TextButton(onPressed: (){
                          Navigator.pop(context);
                        }, child: Text("İptal")),
                        TextButton(onPressed: (){
                          Navigator.pop(context);
                        }, child: Text("Tamam"))
                      ],
                    );
                  }
              );
            }, child: Text("Alert")),
            ElevatedButton(onPressed: (){
              showDialog(context: context,
                  builder: (BuildContext context){
                    return AlertDialog(
                      title: Text("Kayıt İşlemi"),
                      content: TextField(controller: tfControl,decoration: InputDecoration(hintText: "Veri"),),
                      backgroundColor: Colors.pink,
                      actions: [
                        TextButton(onPressed: (){
                          Navigator.pop(context);
                        }, child: Text("İptal")),
                        TextButton(onPressed: (){
                          Navigator.pop(context);
                          print("${tfControl.text}");
                        }, child: Text("Tamam"))
                      ],
                    );
                  }
              );
            }, child: Text("Alert 2"))
          ],
        ),
      ),
    );
  }
}
