class Exercisesi {
  String exerciseName;
  String setsReps;

  Exercisesi({required this.exerciseName, required this.setsReps});

  static List<Exercisesi> getExercises() {
    return <Exercisesi>[
      Exercisesi(exerciseName: "Pull Ups", setsReps: '2 sets of 10-12 reps'),
      Exercisesi(exerciseName: "Dead Lifts", setsReps: '3 sets of 8-10 reps'),
      Exercisesi(exerciseName: "Bench Press", setsReps: '3 sets of 8-12 reps'),
      Exercisesi(exerciseName: "Lunges", setsReps: '3 sets of 8-12 reps'),
      Exercisesi(exerciseName: "Overhead Press", setsReps: '2 sets of 8-10 reps'),
      Exercisesi(exerciseName: "Squats", setsReps: '3 sets of 6-8 reps')
    ];
  }

}