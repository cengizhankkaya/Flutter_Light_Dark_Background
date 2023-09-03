import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

bool _iconBool = false;

IconData _iconLigt = Icons.wb_sunny;
IconData _iconDark = Icons.nights_stay;

ThemeData _lightTheme = ThemeData(
    primarySwatch: Colors.amber,
    brightness: Brightness.light,
    buttonTheme: const ButtonThemeData(buttonColor: Colors.amberAccent));

ThemeData _darkTheme = ThemeData(
  primarySwatch: Colors.red,
  brightness: Brightness.dark,
);

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: _iconBool ? _darkTheme : _lightTheme,
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Dark & Light Theme"),
            actions: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      _iconBool = !_iconBool;
                    });
                  },
                  icon: Icon(_iconBool ? _iconDark : _iconLigt))
            ],
          ),
          body: Center(
            child: ElevatedButton(
                onPressed: () {},
                child: const Text('Karanlık, yıldızların dans ettiği yerdir.')),
          )),
    );
  }
}





















//Cengizhan