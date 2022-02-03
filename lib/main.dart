import 'package:flutter/material.dart';
import 'package:foodwifi/flutterflowpage/pages/createStory.page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CreateStory(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // final List<String> _animals = ["Dog", "Cat", "Crocodile", "Dragon"];

  // String? _selectedColor;
  String? _chosenValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kindacode.com'),
      ),
      body: Center(
        child: InputDecorator(
          decoration: InputDecoration(
            labelText: 'Select Product',
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(2)),
            contentPadding: const EdgeInsets.all(2),
          ),
          child: DropdownButton<String>(
            focusColor: Colors.white,
            value: _chosenValue,
            //elevation: 5,
            underline: Container(),
            style: const TextStyle(color: Colors.white),
            iconEnabledColor: Colors.black,
            itemHeight: 10,

            isExpanded: true,

            items: <String>[
              'Schezwan Noodles',
              'chicken Noodles',
              'vegetable Noodles'
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                  style: const TextStyle(color: Colors.black),
                ),
              );
            }).toList(),
            hint: const Text(
              "Please choose a Noodles",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
            onChanged: (value) {
              setState(() {
                _chosenValue = value;
              });
            },
          ),
        ),
      ),
    );
  }
}

















          // child: DropdownButton<String>(
          //   onChanged: (value) {
          //     setState(() {
          //       _selectedColor = value;
          //     });
          //   },
          //   value: _selectedColor,

          //   // Hide the default underline
          //   underline: Container(),
          //   hint: const Center(
          //       child: Text(
          //     'Select the aniaml you love',
          //     style: TextStyle(color: Colors.white),
          //   )),
          //   icon: const Icon(
          //     Icons.arrow_drop_down,
          //     color: Colors.black,
          //   ),
          //   isExpanded: true,

          //   // The list of options
          //   items: _animals
          //       .map((e) => DropdownMenuItem(
          //             child: Container(
          //               alignment: Alignment.centerLeft,
          //               child: Text(
          //                 e,
          //                 style: const TextStyle(fontSize: 18),
          //               ),
          //             ),
          //             value: e,
          //           ))
          //       .toList(),

          //   // Customize the selected item
          //   selectedItemBuilder: (BuildContext context) => _animals
          //       .map((e) => Center(
          //             child: Text(
          //               e,
          //               style: const TextStyle(
          //                   fontSize: 18,
          //                   color: Colors.amber,
          //                   fontStyle: FontStyle.italic,
          //                   fontWeight: FontWeight.bold),
          //             ),
          //           ))
          //       .toList(),
          // ),
  
