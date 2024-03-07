import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:personal_project/components/button_reusable.dart';
import 'package:personal_project/components/logo_image.dart';
import 'package:personal_project/components/text_field.dart';
import 'package:personal_project/ui/signup_page.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _passwordTextController = TextEditingController();
  final TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.white,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                child: Column(children: [
                  logoWidget("lib/images/logo.png"),
                  const SizedBox(height: 5,),
                  const Text("Login to Shape Shift",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  const SizedBox(height: 50,),
                  textFieldWidget("Enter email here", Icons.person_outline, false, _emailTextController),
                  const SizedBox(height: 30,),
                  textFieldWidget("Enter password here", Icons.lock_outline, true, _passwordTextController),
                  const SizedBox(height: 30,),
                  reusableButton(context, true, () { signIn(); }),
                  signUpOption()
                  ]),
              ),
            )
          ),
        ),
      ),
    );
  }

  Row signUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Dont have an account?  ",
          style: TextStyle(color: Colors.black)),
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: ((context) => const SignUpPage())));
          },
          child: const Text(
            "Sign Up",
            style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
              decorationColor: Colors.red,
              decorationThickness: 1
            ),
          ),
        )
      ],
    );
  }

  Future signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: _emailTextController.text.trim(),
      password: _passwordTextController.text.trim(),
    );
  }

  @override
  void dispose() {
    _emailTextController.dispose();
    _passwordTextController.dispose();
    super.dispose();
  }

}