import 'package:flutter/material.dart';
import 'package:flutter_slidable_demo/main.dart';

import 'constructor.dart';


class PatientList extends StatelessWidget{
  final List<PatientDetails> _plist = <PatientDetails>[
    PatientDetails(patNumber: 1, patName: 'Sam', age: 78),
    PatientDetails(patNumber: 2, patName: 'Mike', age: 82),
    PatientDetails(patNumber: 3, patName: 'Liv', age: 66),
    PatientDetails(patNumber: 4, patName: 'Tom', age: 69),
  ];

  @override
  Widget build(BuildContext context) {
    return HomeUi(_plist);
  }
}