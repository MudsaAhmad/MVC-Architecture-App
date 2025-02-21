import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mvc_architecture/view/componants/button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Screen'),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              height: 100,
              // image: 'https://www.freeiconspng.com/thumbs/person-icon/clipart--person-icon--cliparts-15.png',
              title: 'Login Button',
              buttonColor: Colors.black12,
              //  icon: IconData(codePoint),
              onTap: () {
                setState(() {
                  loading = false;
                });

                print('tapped---------->');
              },
              loading: loading,
            ),
            SizedBox(
              height: 20,
            ),
            CustomButton(
              height: 100,
              // image: 'https://www.freeiconspng.com/thumbs/person-icon/clipart--person-icon--cliparts-15.png',
              title: 'signup Button',
              buttonColor: Colors.amber,
              //  icon: IconData(codePoint),
              onTap: () {
                setState(() {
                  loading = false;
                });

                print('tapped---------->');
              },
              loading: loading,
            ),
          ],
        ),
      ),
    );
  }
}
