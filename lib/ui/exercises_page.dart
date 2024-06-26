import 'package:flutter/material.dart';
import 'package:personal_project/components/logo_image.dart';
import 'package:personal_project/ui/benchpress_page.dart';
import 'package:personal_project/ui/deadlifts_page.dart';
import 'package:personal_project/ui/dips_page.dart';
import 'package:personal_project/ui/lunges_page.dart';
import 'package:personal_project/ui/overhead_press_page.dart';
import 'package:personal_project/ui/pullups_page.dart';
import 'package:personal_project/ui/rows_page.dart';
import 'package:personal_project/ui/squats_page.dart';

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
            Padding(
              padding: EdgeInsets.only(right: 50),
              child: Text("Shape Shift", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white)),
            ),
          ),
          backgroundColor: Colors.black,
          iconTheme: const IconThemeData(color: Colors.white),
        ),

        //instructions card

        body: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              
              Center(child: SizedBox(
                height: 70,
                child: logoWidget("lib/images/ehead.png")
              ,)),

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

              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Material(
                    elevation: 8,
                    borderRadius: BorderRadius.circular(12),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    color: Colors.deepPurple,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: ((context) => const PullupPage())));
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Ink.image(
                            image: const AssetImage("lib/images/pullup.png"),
                            height: 100,
                            width: double.infinity,
                            fit: BoxFit.cover,
              ),],),),),),),

              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Material(
                    elevation: 8,
                    borderRadius: BorderRadius.circular(12),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    color: Colors.deepPurple,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: ((context) => const DeadliftsPage())));
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Ink.image(
                            image: const AssetImage("lib/images/deadlift.png"),
                            height: 100,
                            width: double.infinity,
                            fit: BoxFit.cover,
              ),],),),),),),

              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Material(
                    elevation: 8,
                    borderRadius: BorderRadius.circular(12),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    color: Colors.deepPurple,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: ((context) => const BenchpressPage())));
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Ink.image(
                            image: const AssetImage("lib/images/bench.png"),
                            height: 100,
                            width: double.infinity,
                            fit: BoxFit.cover,
              ),],),),),),),

              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Material(
                    elevation: 8,
                    borderRadius: BorderRadius.circular(12),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    color: Colors.deepPurple,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: ((context) => const DipsPage())));
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Ink.image(
                            image: const AssetImage("lib/images/dips.png"),
                            height: 100,
                            width: double.infinity,
                            fit: BoxFit.cover,
              ),],),),),),),

              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Material(
                    elevation: 8,
                    borderRadius: BorderRadius.circular(12),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    color: Colors.deepPurple,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: ((context) => const LungesPage())));
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Ink.image(
                            image: const AssetImage("lib/images/lunge.png"),
                            height: 100,
                            width: double.infinity,
                            fit: BoxFit.cover,
              ),],),),),),),

              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Material(
                    elevation: 8,
                    borderRadius: BorderRadius.circular(12),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    color: Colors.deepPurple,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: ((context) => const OverheadPressPage())));
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Ink.image(
                            image: const AssetImage("lib/images/overhead.png"),
                            height: 100,
                            width: double.infinity,
                            fit: BoxFit.cover,
              ),],),),),),),

              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Material(
                    elevation: 8,
                    borderRadius: BorderRadius.circular(12),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    color: Colors.deepPurple,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: ((context) => const RowsPage())));
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Ink.image(
                            image: const AssetImage("lib/images/rows.png"),
                            height: 100,
                            width: double.infinity,
                            fit: BoxFit.cover,
              ),],),),),),),

              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Material(
                    elevation: 8,
                    borderRadius: BorderRadius.circular(12),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    color: Colors.deepPurple,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: ((context) => const SquatsPage())));
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Ink.image(
                            image: const AssetImage("lib/images/squat.png"),
                            height: 100,
                            width: double.infinity,
                            fit: BoxFit.cover,
              ),],),),),),),

            ],
          ),
        ),
      ),
    );
  }
}