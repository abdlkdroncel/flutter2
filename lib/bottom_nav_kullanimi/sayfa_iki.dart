import 'package:flutter/material.dart';

class SayfaIki extends StatefulWidget{
  const SayfaIki({super.key});

  @override
  State<SayfaIki> createState() => _SayfaIkiState();
}

class _SayfaIkiState extends State<SayfaIki> {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text("Sayfa iki",style: TextStyle(fontSize: 12,color: Colors.blue),),);
  }
}
