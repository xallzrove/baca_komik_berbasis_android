import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 25, bottom: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // const Text(
            //   'My Komik',
            // style: TextStyle(
            //   fontSize: 25,
            //   fontWeight: FontWeight.bold,
            // ),),
            // const SizedBox(height: 20,),
          Image.asset(
            'assets/komik/page01.jpg',
            height: 250,
            width: 2500,
            ),
            const SizedBox(height: 20,),
            const Text(
              'narutoo',
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),),
            const SizedBox(height: 20,),
            Row(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  'Sinopsi :',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),),
              ],
            ),
            const SizedBox(height: 10,),
            Row(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  'blablabla',
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.normal,
                ),),
              ],
            ),
            const SizedBox(height: 20,),
            Row(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      'Biodata :',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),),
                  ],
                ),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  'blablabla',
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.normal,
                ),),
              ],
            ),
            const SizedBox(height: 20,),
            Row(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  'Komentar :',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  'blablabla',
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.normal,
                  //fontFamily:, 
                ),),
              ],
            ),
            const SizedBox(height: 20,),
            TextButton(
  onPressed: () {
    print('TextButton pressed');
  },
  child: const Text('Text Button'),
),
        ],),

        
      ),
    );
  }
}