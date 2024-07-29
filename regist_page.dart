import 'package:flutter/material.dart';

class RegistPage extends StatefulWidget {
  const RegistPage({super.key});

  @override
  State<RegistPage> createState() => _RegistPageState();
}

class _RegistPageState extends State<RegistPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            const Text(
              'Login',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 100,
            ),
            teksField(hintText: 'Masukkan Nama'),
            const SizedBox(
              height: 20,
            ),
            teksField(hintText: 'Masukkan email'),
            const SizedBox(
              height: 20,
            ),
            teksField(hintText: 'Masukkan Password'),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/loginPage');
                },
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    backgroundColor: Colors.deepPurple),
                child: const Text(
                  'Buat Akun',
                  style: TextStyle(color: Colors.white),
                )),
          ],
        ),
      ),
    );
  }

  Widget teksField({required String hintText}) {
    return Column(
      children: [
        TextFormField(
          decoration: InputDecoration(hintText: hintText),
        )
      ],
    );
  }
}
