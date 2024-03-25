import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

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
      body: SingleChildScrollView(
        child: Column(
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
                        'Enter Date here',
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
        
              const SizedBox(height: 10),
        
              SizedBox(
                width: double.infinity,
                child: Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(40.0),
                    child: Center(
                      child: Text(
                        '"Just believe in yourself. Even if you dont, just pretend that you do and at some point you will"',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
        
              const SizedBox(height: 10,),
              //workout image button
        
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Material(
                    elevation: 8,
                    borderRadius: BorderRadius.circular(12),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    color: Colors.red,
                    child: InkWell(
                      onTap: () {
                        
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Ink.image(
                            image: const AssetImage("lib/images/logo.png"),
                            height: 200,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(height: 5,),
                          const Text(
                            "Exercises",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
        
              const SizedBox(height: 10,),
        
              //workout program image button
        
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Material(
                    elevation: 8,
                    borderRadius: BorderRadius.circular(12),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    color: Colors.red,
                    child: InkWell(
                      onTap: () {
                        
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Ink.image(
                            image: const AssetImage("lib/images/logo.png"),
                            height: 200,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(height: 5,),
                          const Text(
                            "Workout Programs",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
        
            ],
          ),
      ),
      );
  }
}