import 'package:flutter/material.dart';
import 'package:personal_project/ui/dashboard_page.dart';

class ExercisesPage extends StatefulWidget {
  const ExercisesPage({super.key});

  @override
  State<ExercisesPage> createState() => _ExercisesPageState();
}

class _ExercisesPageState extends State<ExercisesPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Center(child:
            Text("Shape Shift", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white)),
          ),
          backgroundColor: Colors.black,
          elevation: 0,
          iconTheme: const IconThemeData(color: Colors.white),
          actions: <Widget>[IconButton(icon: const Icon(Icons.home), color: Colors.white, onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: ((context) => const DashboardPage())));
          },),],
        ),
      
        body: const Center(
          child: Column( children: [
            SizedBox(height: 10,),
            Text("exercises"),
          ],
          ),
        ),
      
        ),
    );
  }
}