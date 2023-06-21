import 'dart:io';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:student_list/core/heights.dart';

class StudentDetails extends StatefulWidget {
  final String name;
  final String age;
  final String phonenumber;
  final String place;
  final String photo;
  int? index;

  StudentDetails({
    super.key,
    required this.name,
    required this.age,
    required this.phonenumber,
    required this.place,
    required this.photo,
  });

  @override
  State<StudentDetails> createState() => _StudentDetailsState();
}

class _StudentDetailsState extends State<StudentDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.grey,
        toolbarHeight: 70,
        title: const Text(
          'Student Details',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Consumer(
              builder: (context, value, child) {
                return Center(
                  child: Column(
                    children: [
                      // const Center(
                      //   child: Text(
                      //     'Student Details',
                      //     style: TextStyle(
                      //         fontSize: 25,
                      //         color: Color.fromARGB(255, 3, 3, 3),
                      //         fontWeight: FontWeight.w800),
                      //   ),
                      // ),
                      const SizedBox(
                        height: 30,
                      ),
                      CircleAvatar(
                        radius: 80,
                        backgroundImage: FileImage(
                          File(
                            widget.photo,
                          ),
                        ),
                      ),
                      kheight20,
                      Text(
                        'Name:  ${widget.name}',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Age:  ${widget.age}',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'phonenumber:  ${widget.phonenumber}',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                      kheight20,
                      Text(
                        'place:  ${widget.place}',
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: double.infinity,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.grey,
                              shadowColor: Colors.black,
                            ),
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.edit),
                                SizedBox(
                                  width: 10,
                                ),
                                Text('Edit'),
                              ],
                            )),
                      ),
                      Container(
                        width: double.infinity,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.grey,
                              shadowColor: Colors.black,
                            ),
                            onPressed: () {},
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.delete),
                                SizedBox(
                                  width: 10,
                                ),
                                Text('Delete'),
                              ],
                            )),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
