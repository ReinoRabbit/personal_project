import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:personal_project/classes/advanced_exercises.dart';


class AdvancedProgramPage extends StatefulWidget {
  const AdvancedProgramPage({super.key});

  @override
  State<AdvancedProgramPage> createState() => _AdvancedProgramPageState();
}

class _AdvancedProgramPageState extends State<AdvancedProgramPage> {
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