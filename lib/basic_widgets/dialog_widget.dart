import 'package:flutter/material.dart';

class DialogWidget extends StatelessWidget {
  const DialogWidget({Key? key}) : super(key: key);

  void _showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text("My title"),
        content: const Text("2341760037 Purnama Ridzky Nugraha"),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("OK"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Dialog Example")),
      body: Center(
        child: ElevatedButton(
          child: const Text('Show alert'),
          onPressed: () => _showAlertDialog(context),
        ),
      ),
    );
  }
}
