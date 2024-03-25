import 'package:flutter/material.dart';
import 'package:personal_project/ui/dashboard_page.dart';

class ProgramsPage extends StatefulWidget {
  const ProgramsPage({super.key});

  @override
  State<ProgramsPage> createState() => _ProgramsPageState();
}

class _ProgramsPageState extends State<ProgramsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            Text("programs"),
          ],
          ),
        ),

    );
  }
}