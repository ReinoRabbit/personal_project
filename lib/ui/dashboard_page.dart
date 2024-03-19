import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:personal_project/components/button_reusable.dart';
// import 'package:personal_project/ui/login_page.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {

  final user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Padding(
          padding: EdgeInsets.only(left: 50),
          child: Text("Shape Shift", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white)),
        )),
        backgroundColor: Colors.red,
        elevation: 0,
        actions: <Widget>[IconButton(icon: const Icon(Icons.logout), color: Colors.white, onPressed: () {
          FirebaseAuth.instance.signOut();
        },),],
      ),

      //top card
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              width: double.infinity, // Set width to 100%
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Center(
                    child: Text(
                      'This is a white card with a drop shadow.',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            // 2nd card

            const SizedBox(height: 5.0),

            SizedBox(
              width: double.infinity,
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(50.0),
                  child: Text(
                    'This is another white card with a drop shadow.',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),


            //button
            Center(child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              child: reusableButton(context, true, () {})
              )
            )

          ],
        ),
      );
  }
}