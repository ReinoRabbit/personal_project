import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:personal_project/classes/advanced_exercises.dart';
import 'package:personal_project/ui/benchpress_page.dart';
import 'package:personal_project/ui/deadlifts_page.dart';
import 'package:personal_project/ui/dips_page.dart';
import 'package:personal_project/ui/lunges_page.dart';
import 'package:personal_project/ui/overhead_press_page.dart';
import 'package:personal_project/ui/pullups_page.dart';
import 'package:personal_project/ui/rows_page.dart';
import 'package:personal_project/ui/squats_page.dart';

class AdvancedProgramPage extends StatefulWidget {
  const AdvancedProgramPage({super.key});

  @override
  State<AdvancedProgramPage> createState() => _AdvancedProgramPageState();
}

class _AdvancedProgramPageState extends State<AdvancedProgramPage> {
  static const String bullet = "\u2022";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Center(child: 
            Padding(
              padding: EdgeInsets.only(right: 50),
              child: Text("Shape Shift", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white)),
            ),
          ),
          backgroundColor: Colors.black,
          iconTheme: const IconThemeData(color: Colors.white),
        ),
        
        body: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              const Padding(
                padding: EdgeInsets.all(6.0),
                child: SizedBox(
                  width: double.infinity, // Set width to 100%
                  child: Card(
                    color: Colors.deepPurple,
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Center(
                        child: Text(
                          'Advanced Program',
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

              //content here

              Center(
                child: dataBody(),
              ),

              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: OutlinedButton(
                        child: Text("Selected exercises ${selectedExercises.length}"),
                        onPressed: () {
                          //onpressed for selected button
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: OutlinedButton(
                        onPressed: selectedExercises.isEmpty ? null : () {
                          //onpressed for the mark as done button
                          deleteSelected();
                        },
                        child: const Text("Mark as done!"),
                      ),
                    ),
                  ],
                ),
              ),

              const Padding(
                padding: EdgeInsets.all(6.0),
                child: SizedBox(
                  width: double.infinity, // Set width to 100%
                  child: Card(
                    color: Colors.deepPurple,
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Center(
                        child: Text(
                          'Weekly Routine',
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

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: double.infinity,
                  child: Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text.rich(
                        TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Day 1:',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: '\n$bullet Advanced workout program \n',
                            ),
                            TextSpan(
                              text: 'Day 2:',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: '\n$bullet Light Cardio \n',
                            ),
                            TextSpan(
                              text: 'Day 3:',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: '\n$bullet Advanced workout program \n',
                            ),
                            TextSpan(
                              text: 'Day 4:',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: '\n$bullet Light cardio or optional rest day \n',
                            ),
                            TextSpan(
                              text: 'Day 5:',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: '\n$bullet Advanced workout program \n',
                            ),
                            TextSpan(
                              text: 'Day 6 & 7:',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: '\n$bullet Light cardio and Rest day (personal choice) \n',
                            ),
                          ],
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }

  List<Exercisesa> exercises = [];
  List<Exercisesa> selectedExercises = [];

  @override
  void initState() {
    exercises = Exercisesa.getExercises();
    super.initState();
  }

  onSelectedRow(bool b, Exercisesa e) async {
    setState(() {
      if (b) {
      selectedExercises.add(e);
    } else {
      selectedExercises.remove(e);
    }
    });
  }

  deleteSelected() async {
  setState(() {
    if (selectedExercises.isNotEmpty) {
      List<Exercisesa> temp = [];
      temp.addAll(selectedExercises);
      for (Exercisesa exercise in temp) {
        exercises.remove(exercise);
        selectedExercises.remove(exercise);
      }
    }
  });
}

  DataTable dataBody() {
    return DataTable(
      columns: const [
        DataColumn(label: Text('Exercises'), numeric: false, tooltip: 'Exercise Names'),
        DataColumn(label: Text('Sets x Reps'), numeric: false, tooltip: 'Amount of sets and reps')
      ],
      rows: exercises.map(
        (e) => DataRow(
          selected: selectedExercises.contains(e),
          onSelectChanged: (b) {
            if (kDebugMode) {
              print("onSelect");
            }
            onSelectedRow(b!, e);
          },
          cells: [
          DataCell(
            Row(
              children: [
                Text(e.exerciseName),
                const Icon(Icons.arrow_forward, size: 15),
              ],
            ),
            onTap: () {
              //add switch statement for strings to route to exercises pages
              if (kDebugMode) {
                print('Selected ${e.exerciseName}');
              }
              switch (e.exerciseName) {
                case 'Pull Ups':
                    Navigator.push(context, MaterialPageRoute(builder: ((context) => const PullupPage())));
                  break;
                case 'Dead Lifts':
                    Navigator.push(context, MaterialPageRoute(builder: ((context) => const DeadliftsPage())));
                  break;
                case 'Bench Press':
                    Navigator.push(context, MaterialPageRoute(builder: ((context) => const BenchpressPage())));
                  break;
                case 'Dips':
                    Navigator.push(context, MaterialPageRoute(builder: ((context) => const DipsPage())));
                  break;
                case 'Lunges':
                    Navigator.push(context, MaterialPageRoute(builder: ((context) => const LungesPage())));
                  break;
                case 'Overhead Press':
                    Navigator.push(context, MaterialPageRoute(builder: ((context) => const OverheadPressPage())));
                  break;
                case 'Rows':
                    Navigator.push(context, MaterialPageRoute(builder: ((context) => const RowsPage())));
                  break;
                case 'Squats':
                    Navigator.push(context, MaterialPageRoute(builder: ((context) => const SquatsPage())));
                  break;
                default:
                  break;
              }
            },
          ),
          DataCell(
            Text(e.setsReps),
          ),
        ]),
      ).toList(),
    );
  }

}