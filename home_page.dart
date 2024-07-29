import 'package:flutter/material.dart';
import '';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('home'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            
            ListView(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        listItem(image: 'assets/img/fbIcon.png', title: 'FaceBook', author: 'Mark Zuckerberg'),
                        
                      ],
                    ),
                    Column(
                      children: [
                        listItem(image: 'assets/img/googleIcon.png', title: 'Google', author: 'Ndk tau'),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget listItem({required String image,required String title,required String author}){
    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.asset(image),
            Text(title,style: const TextStyle(fontWeight: FontWeight.bold),),
            Text(author)
          ],
        ),
      ),
    );
  }
}