import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ref = FirebaseDatabase.instance.ref();
  late DatabaseReference databaseReference;
  final editText = TextEditingController();
  final newCreate = "newCreate";

  static var Firebase;
  // setData() {
  //   ref.child('info').set({
  //     'id': "10",
  //     'name': 'Denish',
  //     'Contact': "9366304598",
  //     'Country': 'Hero',
  //   }).asStream();
  // }

  showData() {
    ref.once().then((snapshot) {
      print(snapshot);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    databaseReference = ref;
  }

  // final Future<FirebaseApp> _future = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Firebase Demo"),
      ),
      body: Column(
        children: [
          TextField(
            controller: editText,
          ),
          ElevatedButton(
            onPressed: () {
              ref.child(newCreate).set(editText.text);
            },
            child: const Text('submit'),
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
          ),

          // TextButton(
          //   onPressed: setData,
          //   child: const Text('setData'),
          // ),
          FirebaseAnimatedList(
              shrinkWrap: true,
              query: databaseReference,
              itemBuilder: (BuildContext context, DataSnapshot snapshot,
                  Animation animation, int index) {
                return ListTile(
                  leading: Text(snapshot.value.toString()),
                  // leading: Text(snapshot.value['Country']),
                  // title: Text(snapshot.value['name']),
                  // subtitle: Text(snapshot.value['country']),
                  // trailing: Text(snapshot.value['contact'].toString()),
                );
              })
        ],
      ),
    );
  }
}
