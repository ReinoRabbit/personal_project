class Exercises {
  String exerciseName;
  String setsReps;

  Exercises({required this.exerciseName, required this.setsReps});

  static List<Exercises> getExercises() {
    return <Exercises>[
      Exercises(exerciseName: "Dead Lifts", setsReps: '3 sets of 8-10 reps'),
      Exercises(exerciseName: "Bench Press", setsReps: '3 sets of 8-12 reps'),
      Exercises(exerciseName: "Overhead Press", setsReps: '2 sets of 8-10 reps'),
      Exercises(exerciseName: "Squats", setsReps: '3 sets of 6-8 reps')
    ];
  }

}