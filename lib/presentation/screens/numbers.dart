import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:student_list/controller/provider/sample_provider.dart';

class NUmbers extends StatelessWidget {
  const NUmbers({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Sample>(
      builder: (context, value, child) => Scaffold(
        body: Center(
          child: Text('${value.data}'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            value.sample();
          },
        ),
      ),
    );
  }
}
