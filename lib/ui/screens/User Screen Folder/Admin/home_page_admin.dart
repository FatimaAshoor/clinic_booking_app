import 'package:flutter/material.dart';

class HomePageAdmin extends StatefulWidget {
  const HomePageAdmin({super.key});

  @override
  State<HomePageAdmin> createState() => _HomePageAdminState();
}

class _HomePageAdminState extends State<HomePageAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home", style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children:[
            Row(),
          ]
        )
      ),
    );
  }
}
