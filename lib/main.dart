import 'package:flutter/material.dart';
import 'package:jobsheet_fluter_1/basic_widgets/loading_cupertino.dart';
import 'package:jobsheet_fluter_1/basic_widgets/fab_widget.dart';
import 'package:jobsheet_fluter_1/basic_widgets/scaffold_widget.dart';
import 'package:jobsheet_fluter_1/basic_widgets/dialog_widget.dart';
import 'package:jobsheet_fluter_1/basic_widgets/textfield_widget.dart';
import 'package:jobsheet_fluter_1/basic_widgets/datepicker_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MenuPage(),
    );
  }
}

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Menu Praktikum")),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          ListTile(
            title: const Text("1. Cupertino Button & Loading"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const LoadingCupertino()),
              );
            },
          ),
          ListTile(
            title: const Text("2. Floating Action Button"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const FabWidget()),
              );
            },
          ),
          ListTile(
            title: const Text("3. Scaffold Widget"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const ScaffoldWidget()),
              );
            },
          ),
          ListTile(
            title: const Text("4. Dialog Widget"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const DialogWidget()),
              );
            },
          ),
          ListTile(
            title: const Text("5. TextField Widget"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const TextfieldWidget()),
              );
            },
          ),
          ListTile(
            title: const Text("6. DatePicker Widget"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const DatepickerWidget()),
              );
            },
          ),
        ],
      ),
    );
  }
}
