class Exercisesa {
  String exerciseName;
  String setsReps;

  Exercisesa({required this.exerciseName, required this.setsReps});

  static List<Exercisesa> getExercises() {
    return <Exercisesa>[
      Exercisesa(exerciseName: "Pull Ups", setsReps: '2 sets of 10-12 reps'),
      Exercisesa(exerciseName: "Dead Lifts", setsReps: '3 sets of 8-10 reps'),
      Exercisesa(exerciseName: "Bench Press", setsReps: '3 sets of 8-12 reps'),
      Exercisesa(exerciseName: "Dips", setsReps: '2 sets of 8-12 reps'),
      Exercisesa(exerciseName: "Lunges", setsReps: '3 sets of 8-12 reps'),
      Exercisesa(exerciseName: "Overhead Press", setsReps: '2 sets of 8-10 reps'),
      Exercisesa(exerciseName: "Rows", setsReps: '3 sets of 8-12 reps'),
      Exercisesa(exerciseName: "Squats", setsReps: '3 sets of 6-8 reps')
    ];
  }

}