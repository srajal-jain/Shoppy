import 'package:firebase_auth/firebase_auth.dart';
import 'package:shoppy/reusable_widgets.dart';
import 'package:shoppy/screens/home_screen.dart';
import 'package:shoppy/screens/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:shoppy/main.dart';
import 'package:shoppy/color_utils.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
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
                'Login',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.deepPurple,
                ),
              ),
            ),
            Image.asset('assets/images/signin.png'),
            const SizedBox(
              height: 20,
            ),
            reusableTextField("Enter Email", Icons.mail, false,
                _emailTextController),
            const SizedBox(
              height: 15,
            ),
            reusableTextField("Enter Password", Icons.lock, true,
                _passwordTextController),
            const SizedBox(
              height: 5,
            ),
            forgetPassword(context),
            firebaseUIButton(context, "Sign In", () {
              FirebaseAuth.instance
                  .signInWithEmailAndPassword(
                  email: _emailTextController.text,
                  password: _passwordTextController.text)
                  .then((value) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyHomeScreen(title: 'Shoppy')));
              }).onError((error, stackTrace) {
                print("Error ${error.toString()}");
              });
            }),
            const SizedBox(
              height: 10,
            ),
            // Wrap(
            //   crossAxisAlign,
            //   children: [
            //     Image.asset('assets/images/google.png', height: 24, width: 24,),
            //     Image.asset('assets/images/facebook.png'),
            //     Image.asset('assets/images/apple.png'),
            //   ],
            // ),
            const SizedBox(
              height: 10,
            ),
            signUpOption()
          ],
          ),
        ),
    );
  }

  Row signUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have account?",
            style: TextStyle(color: Colors.black)),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SignUpScreen()));
          },
          child: const Text(
            " Sign Up",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }

  Widget forgetPassword(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 35,
      alignment: Alignment.bottomRight,
      child: TextButton(
        child: const Text(
          "Forgot Password?",
          style: TextStyle(color: Colors.black),
          textAlign: TextAlign.right,
        ),
        onPressed: null,
      ),
    );
  }
}