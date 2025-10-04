import 'package:flutter/material.dart';

class FabWidget extends StatelessWidget {
  const FabWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contoh Floating Action Button"),
        backgroundColor: Colors.pink,
      ),
      body: const Center(
        child: Text("Tekan tombol FAB di kanan bawah"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // contoh aksi sederhana
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("2341760037 Purnama Ridzky Nugraha")),
          );
        },
        child: const Icon(Icons.thumb_up),
        backgroundColor: Colors.pink,
      ),
    );
  }
}
