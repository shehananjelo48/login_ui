import 'package:flutter/material.dart';

class TestFile extends StatefulWidget {
  const TestFile({Key? key}) : super(key: key);

  @override
  _TestFileState createState() => _TestFileState();
}

class _TestFileState extends State<TestFile> {

  @override
  void initState() {
    super.initState();
      
  }


  int count = 0;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          count++;
          debugPrint(count.toString());
        });
      },
      child: const Text('click me'),
    );
  }
}
