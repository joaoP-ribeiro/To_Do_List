import "package:app/Util/myBotton.dart";
import "package:flutter/material.dart";

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox(
      {super.key,
      required this.controller,
      required this.onSave,
      required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
        height: 200,
        decoration: BoxDecoration(borderRadius: BorderRadius.zero),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: this.controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Add new Task!",
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyButton(title: "Save", onPressed: this.onSave),
                const SizedBox(width: 10),
                MyButton(title: "Cancel", onPressed: this.onCancel)
              ],
            )
          ],
        ),
      ),
    );
  }
}
