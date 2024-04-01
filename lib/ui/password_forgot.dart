import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:personal_project/components/button_reusable.dart';
import 'package:personal_project/components/logo_image.dart';
import 'package:personal_project/components/text_field.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {

  final TextEditingController _emailTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child:
            Padding(
              padding: EdgeInsets.only(right: 50),
              child: Text("Password Reset", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white)),
            ),
          ),
        backgroundColor: Colors.black,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 30,),
                logoWidget("lib/images/newlogo.png"),
                const SizedBox(height: 30,),
                const Text('Enter your email and we will send you a reset link',
                textAlign: TextAlign.center, style: TextStyle(fontSize: 18),),
                const SizedBox(height: 30,),
                textFieldWidget("Enter email here", Icons.person_outline, false, _emailTextController),
                const SizedBox(height: 30,),
                reusableButton(context, true, () { passwordReset(context); }),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future passwordReset(BuildContext context) async {
  try {
    var email = _emailTextController.text.trim();
    await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
    // ignore: use_build_context_synchronously
    showDialog(
      context: context,
      builder: (context) {
        return const AlertDialog(
          content: Text('Password reset link has been sent. Please check your email!'),
        );
      },
    );
  } on FirebaseAuthException catch (e) {
    // ignore: use_build_context_synchronously
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Text('There was an error:  ${e.message}'),
        );
      },
    );
  }
}

  @override
  void dispose() {
    _emailTextController.dispose();
    super.dispose();
  }

}