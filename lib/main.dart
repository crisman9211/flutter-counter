import 'package:counter_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  // runApp(new MyApp())
  runApp(const MyApp());
}

// Stateless no mantienen el estado de la aplicacion
// no mantienen los valores por si mismo
// ? todo metodo StatelessWidged tiene un metodo Build
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}
