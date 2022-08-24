import 'package:firebase_auth/firebase_auth.dart';
import 'package:shoppy/reusable_widgets.dart';
import 'package:shoppy/main.dart';
import 'package:shoppy/color_utils.dart';
import 'package:flutter/material.dart';
import 'package:shoppy/screens/home_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _userNameTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(30),
              alignment: AlignmentDirectional.topStart,
              child: Text(
                'SignUp',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.deepPurple,
                ),
              ),
            ),
            Image.asset('assets/images/signup.png'),

            const SizedBox(
              height: 30,
            ),
            reusableTextField("Enter Full Name", Icons.person, false,
                _userNameTextController, ),
            const SizedBox(
              height: 20,
            ),
            reusableTextField("Enter Email Id", Icons.mail, false,
                _emailTextController),
            const SizedBox(
              height: 20,
            ),
            reusableTextField("Enter Password", Icons.lock, true,
                _passwordTextController),
            const SizedBox(
              height: 20,
            ),
            firebaseUIButton(context, "Sign Up", () {
              FirebaseAuth.instance
                  .createUserWithEmailAndPassword(
                  email: _emailTextController.text,
                  password: _passwordTextController.text)
                  .then((value) {
                print("Created New Account");
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyHomeScreen(title: 'Shoppy')));
              }).onError((error, stackTrace) {
                print("Error ${error.toString()}");
              });
            })
          ],
        ),
      ),
    );
  }
}