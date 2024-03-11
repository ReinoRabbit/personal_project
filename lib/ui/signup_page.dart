import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:personal_project/components/button_reusable.dart';
import 'package:personal_project/components/logo_image.dart';
import 'package:personal_project/components/text_field.dart';
import 'package:personal_project/ui/login_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _passwordTextController = TextEditingController();
  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _passwordConfirmTextController = TextEditingController();

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
                  const SizedBox(height: 0,),
                  const Text("Sign up to Shape Shift",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  const SizedBox(height: 30,),
                  textFieldWidget("Enter email here", Icons.person_outline, false, _emailTextController),
                  const SizedBox(height: 20,),
                  textFieldWidget("Enter password here", Icons.lock_outline, true, _passwordTextController),
                  const SizedBox(height: 20,),
                  textFieldWidget("Confirm Password", Icons.lock_outline, true, _passwordConfirmTextController),
                  const SizedBox(height: 25,),
                  reusableButton(context, false, () { signUp(context); }),
                  loginOption()
                  ]),
              ),
            )
          ),
        ),
      ),
    );
  }

  Row loginOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Have an account?  ",
          style: TextStyle(color: Colors.black)),
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: ((context) => const LoginPage())));
          },
          child: const Text(
            "Login",
            style: TextStyle(color: Colors.red,
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

  Future signUp(BuildContext context) async {
  if (passwordConfirmed()) {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: _emailTextController.text.trim(),
      password: _passwordTextController.text.trim()
    );

    // ignore: use_build_context_synchronously
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('User registered successfully please login!'))
    );
  }
}

  bool passwordConfirmed() {
    if (_passwordTextController.text.trim() == _passwordConfirmTextController.text.trim()) {
      return true;
    } else {
      return false;
    }
  }

  @override
  void dispose() {
    _emailTextController.dispose();
    _passwordTextController.dispose();
    _passwordConfirmTextController.dispose();
    super.dispose();
  }

}