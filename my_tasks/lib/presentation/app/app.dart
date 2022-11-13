import 'package:flutter/material.dart';
import 'package:my_tasks/presentation/home/view/home_view.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Tasks App',
      theme: ThemeData(
     
        primarySwatch: Colors.blue,
      ),
      home: const MyTasks(),
    );
  }
}