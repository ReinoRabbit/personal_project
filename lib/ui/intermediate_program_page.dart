import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:personal_project/classes/intermediate_exercises.dart';


class IntermediateProgramPage extends StatefulWidget {
  const IntermediateProgramPage({super.key});

  @override
  State<IntermediateProgramPage> createState() => _IntermediateProgramPageState();
}

class _IntermediateProgramPageState extends State<IntermediateProgramPage> {
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
                          'Intermediate Program',
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
                              text: '\n$bullet Intermediate workout program \n',
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
                              text: '\n$bullet Intermediate workout program \n',
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
                              text: '\n$bullet Intermediate workout program \n',
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

  List<Exercisesi> exercises = [];
  List<Exercisesi> selectedExercises = [];

  @override
  void initState() {
    exercises = Exercisesi.getExercises();
    super.initState();
  }

  onSelectedRow(bool b, Exercisesi e) async {
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
      List<Exercisesi> temp = [];
      temp.addAll(selectedExercises);
      for (Exercisesi exercise in temp) {
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
            Text(e.exerciseName),
            onTap: () {
              if (kDebugMode) {
                print('Selected ${e.exerciseName}');
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