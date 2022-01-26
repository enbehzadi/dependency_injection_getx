import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'binding.dart';
import 'dependency_injection/view.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      initialBinding: Binding(),
      home:  const View(),
    );
  }
}
