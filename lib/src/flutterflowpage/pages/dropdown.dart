import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  const DropDown({
    required Key key,
    required this.width,
    required this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  _DropDownState createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  late String _chosenValue;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: InputDecorator(
        decoration: InputDecoration(
          labelText: 'Select Product',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(2)),
          contentPadding: const EdgeInsets.all(15),
        ),
        child: SizedBox(
          height: 30,
          child: DropdownButton<String>(
            itemHeight: 100.0,
            focusColor: Colors.white,
            value: _chosenValue,
            elevation: 5,
            underline: Container(),
            style: const TextStyle(color: Colors.white),
            iconEnabledColor: Colors.black,
            isDense: true,
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
                _chosenValue = value!;
              });
            },
          ),
        ),
      ),
    );
  }
}
