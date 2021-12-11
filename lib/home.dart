import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final String email;
  final String password;
  const Home({Key? key, required this.email, required this.password})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<DataColumn> _dataColums = [
      const DataColumn(label: Text("Email")),
      const DataColumn(label: Text("Password"))
    ];
    List<DataRow> _dataRows = [
      DataRow(cells: [DataCell(Text(email)), DataCell(Text(password))])
    ];

    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        body: DataTable(
          columns: _dataColums,
          rows: _dataRows,
        ));
  }
}
