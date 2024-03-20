import 'package:flutter/material.dart';
import 'package:rodriguez0403/pantallas0403/panel0403/panel_pantalla0403.dart';

void main() => runApp(const MiAppSportlife0403());

class MiAppSportlife0403 extends StatelessWidget {
  const MiAppSportlife0403({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "SportLife Rodriguez0403",
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.brown),
          useMaterial3: true),
      home: const PanelPantalla0403(),
    );
  }
}
