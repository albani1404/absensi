import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  bool email = true;
  bool password = true;
  bool nip = true;

  TextEditingController txtemail = TextEditingController();
  TextEditingController txtpassword = TextEditingController();
  TextEditingController txtnip = TextEditingController();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
            ),
            const Text(
              'enter your data',
              style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
            ),
            const SizedBox(
              height: 50,
            ),
            TextFormField(
              controller: txtemail,
              decoration: const InputDecoration(
                  labelText: 'Email', border: OutlineInputBorder()),
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              controller: txtpassword,
              obscureText:
                  true, // untuk tidak menampilkan text yang di masukkan
              decoration: const InputDecoration(
                  labelText: 'Password', border: OutlineInputBorder()),
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              controller: txtnip,
              obscureText: true,
              decoration: const InputDecoration(
                  labelText: 'NIP', border: OutlineInputBorder()),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                if (txtemail.text.isEmpty ||
                    txtpassword.text.isEmpty ||
                    txtnip.text.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Lengkapi data anda')));
                } else {
                  Navigator.pushReplacementNamed(context, '/home');
                }
              },
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
