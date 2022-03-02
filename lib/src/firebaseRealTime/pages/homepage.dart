// import 'dart:developer';

// import 'package:auto_route/auto_route.dart';
// import 'package:flutter/material.dart';
// import 'package:firebase_database/firebase_database.dart';
// import 'package:foodwifi/src/firebaseRealTime/pages/display.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   final fb = FirebaseDatabase.instance;
//   final name = "Name";
//   final newCreate = "newCreate";
//   final newText = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     final ref = fb.ref();
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Firebase RealTime DataBase'),
//       ),
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: <Widget>[
//               TextField(
//                 controller: newText,
//               ),
//               ElevatedButton(
//                 child: const Text('Read Data'),
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => const RealTimeDataBase()),
//                   );
//                 },
//                 style: ElevatedButton.styleFrom(
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(30.0),
//                   ),
//                 ),
//               ),
//               ElevatedButton(
//                 onPressed: () {
//                   ref.child(newCreate).set(newText.text);
//                 },
//                 child: const Text('submit'),
//                 style: ElevatedButton.styleFrom(
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(30.0),
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     // Clean up the controller when the widget is disposed.
//     newText.dispose();
//     super.dispose();
//   }
// }
