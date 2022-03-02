// ignore_for_file: avoid_print

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ref = FirebaseDatabase.instance.ref().child("Student");
  final name = "Name";
  final newText = TextEditingController();
  var retrivedName;
  @override
  Widget build(BuildContext context) {
    // final fb = ref.ref();
    return Scaffold(
        appBar: AppBar(
          title: const Text('Firebase RealTime DataBase'),
        ),
        body: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(name),
                const SizedBox(width: 20),
                Expanded(child: TextField(controller: newText)),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                ref.child("Name").once().then((DatabaseEvent event) {
                  print(event);

                  setState(() {
                    retrivedName = event;
                  });
                });
              },
              child: const Text("Get"),
            ),
            Text(retrivedName ?? ""),
            // ElevatedButton(
            //   onPressed: () {
            //     ref.child(name).set(newText.text);
            //   },
            //   child: const Text("Submit"),
            // ),
          ],
        ));
  }
}
//   @override
//   void dispose() {
//     // Clean up the controller when the widget is disposed.
//     newText.dispose();
//     super.dispose();
//   }
// }
      // body: Center(
      //   child: Padding(
      //     padding: const EdgeInsets.all(16.0),
      //     child: Column(
      //       crossAxisAlignment: CrossAxisAlignment.stretch,
      //       children: <Widget>[
      //         TextField(
      //           controller: newText,
      //           textAlign: TextAlign.center,
      //         ),
      //         // FlatButton(
      //         //     onPressed: () {
      //         //       ref.child('Movies').push().child(newText.text).asStream();
      //         //     },
      //         //     child: Text('Save'))
      //         ElevatedButton(
      //           child: const Text('Read Data'),
      //           onPressed: () {
      //             ref.child("Name").once().then((DataSnapshot data){
      //               print(data.value);
      //               print(data.key);
      //               setState(() {
      //                 retrievedName =data.value;
      //               });
      //             })
      //           },
      //           style: ElevatedButton.styleFrom(
      //             shape: RoundedRectangleBorder(
      //               borderRadius: BorderRadius.circular(30.0),
      //             ),
      //           ),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
//     );
//   }
// }
