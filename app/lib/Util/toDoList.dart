import "package:flutter/material.dart";

class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;

  ToDoTile({super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            // Check Box
            Checkbox(
              value: taskCompleted,
              onChanged: onChanged,
              activeColor: Colors.black,
            ),
            // Task Name
            Text(
                taskName,
                style: TextStyle(decoration: taskCompleted ? TextDecoration.lineThrough : TextDecoration.none),
            ),
          ],
        ),
        decoration: BoxDecoration(
            color:  Colors.tealAccent,
            borderRadius: BorderRadius.circular(12)
        ),
      )
    );
  }
}
