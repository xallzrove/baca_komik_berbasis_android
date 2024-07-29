import 'package:flutter/material.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Profil Page'),
      ),
      body: Center(
        child: Column(
          children: [
            profileImage(),
            textProfileCom(title: 'Nama : ', isi: ''),
            textProfileCom(title: 'Umur : ', isi: ''),
            textProfileCom(title: 'Email : ', isi: ''),
            textProfileCom(title: 'Jenis Kelamin : ', isi: ''),
            ElevatedButton(
  onPressed: () {
    // Define the action to be performed when the button is pressed
    print('ElevatedButton pressed');
  },
  child: Text('Update'),
)
          ],
        ),
      ),
    );
  }

  CircleAvatar profileImage() {
    return CircleAvatar(
      child: Image.asset('assets/img/profil.jpg'),
      radius: 50.0,
    );
  }

  Padding textProfileCom({required String title, required String isi}) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        width: double.infinity,
        height: 30,
        child: Row(
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
  
}
