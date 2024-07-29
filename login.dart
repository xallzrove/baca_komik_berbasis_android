import 'package:baca_komik_berbasis_android/pages/main_page.dart';
import 'package:baca_komik_berbasis_android/pages/regist_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Center(
            child: Padding(
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
                  loginField(),
                  const SizedBox(
                    height: 20,
                  ),
                  passField(),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => MainPage()));
                      },
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          backgroundColor: Colors.deepPurple),
                      child: const Text(
                        'Login',
                        style: TextStyle(color: Colors.white),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => RegistPage()));
                      },
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          backgroundColor: Colors.deepPurple),
                      child: const Text(
                        'Sign In',
                        style: TextStyle(color: Colors.white),
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    IconButton(onPressed: (){}, icon: Image.asset('assets/img/googleIcon.png')),
                    IconButton(onPressed: (){}, icon: Image.asset('assets/img/fbIcon.png'))
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget loginField() {
    return Column(
      children: [
        TextFormField(
          decoration: const InputDecoration(hintText: 'Masukkan Email'),
        )
      ],
    );
  }
  Widget passField(){
    return TextFormField(
       keyboardType: TextInputType.visiblePassword,
      decoration: const InputDecoration(
        hintText: 'Masukkan Password'
      ),
    );
  }
}
