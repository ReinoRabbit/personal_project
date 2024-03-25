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

        //instructions card

        body: const SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              Padding(
                padding: EdgeInsets.all(8.0),
                child: SizedBox(
                  width: double.infinity, // Set width to 100%
                  child: Card(
                    color: Colors.deepPurple,
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Center(
                        child: Text(
                          'Choose an exercise below:',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              // list of exercises below

            ],
          ),
        ),
      ),
    );
  }
}