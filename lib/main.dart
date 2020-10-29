import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import 'constructor.dart';
import 'patient_list.dart';

 void main() =>
    runApp(MaterialApp(
      home: PatientList(),
      debugShowCheckedModeBanner: false,
    ));

class HomeUi extends StatelessWidget {
  final List<PatientDetails> _pats;
  HomeUi(this._pats);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Patients '),
      ),
      body: ListView.builder(
        itemCount: _pats.length,
        itemBuilder: (context, index) {
          final pats = _pats[index];
          return Slidable(child: Container(
            color: Colors.white,
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                child: Text((pats.patNumber).toString()),
              ),
              title: Text(pats.patName),
              subtitle: Text('Age : '+(pats.age).toString()),
            ),
          ), actionPane: SlidableBehindActionPane(),
          actions: <Widget>[
            IconSlideAction(
              caption: 'log',
              color: Colors.blue,
              icon: Icons.leaderboard,
              onTap: () => print('log'),
            ),
          ],
            secondaryActions: <Widget>[
              IconSlideAction(
                caption: 'edit',
                color: Colors.yellow,
                icon: Icons.edit_outlined,
                onTap: ()=>print('edit'),
              ),
              IconSlideAction(
                caption: 'delete',
                color: Colors.red,
                icon: Icons.delete,
                onTap: ()=>print('delete'),
              ),

            ],
          );
        },),
    );
  }
}

