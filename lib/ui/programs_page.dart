import 'package:flutter/material.dart';
import 'package:personal_project/components/logo_image.dart';

class ProgramsPage extends StatefulWidget {
  const ProgramsPage({super.key});

  @override
  State<ProgramsPage> createState() => _ProgramsPageState();
}

class _ProgramsPageState extends State<ProgramsPage> {
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

              Center(child: SizedBox(
                height: 70,
                child: logoWidget("lib/images/phead.png")
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
                          'Choose a workout program below:',
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

              // list of programs below

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
                        
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Ink.image(
                            image: const AssetImage("lib/images/begin.png"),
                            height: 200,
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
                        
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Ink.image(
                            image: const AssetImage("lib/images/inter.png"),
                            height: 200,
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
                        
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Ink.image(
                            image: const AssetImage("lib/images/advance.png"),
                            height: 200,
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