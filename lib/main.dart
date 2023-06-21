import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';
import 'package:student_list/controller/provider/sample_provider.dart';
import 'package:student_list/controller/provider/student_provider.dart';
import 'package:student_list/models/model.dart';
import 'package:student_list/presentation/screens/home_screen/home.dart';
import 'package:student_list/presentation/screens/numbers.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  if (!Hive.isAdapterRegistered(studentmodelAdapter().typeId)) {
    Hive.registerAdapter(studentmodelAdapter());
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => Studentprovider()),
          ChangeNotifierProvider(create: (context) => Sample()),
        ],
        child: MaterialApp(
            title: 'Flutter Demo',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(),
            home: const Homescreen()));
  }
}
