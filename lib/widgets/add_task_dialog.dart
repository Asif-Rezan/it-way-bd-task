import 'package:flutter/material.dart';

class AddTaskDialog extends StatefulWidget {
  final Function(String) onTaskAdded;

  const AddTaskDialog({super.key, required this.onTaskAdded});

  @override
  _AddTaskDialogState createState() => _AddTaskDialogState();
}

class _AddTaskDialogState extends State<AddTaskDialog> {
  final TextEditingController _taskController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Add New Task"),
      content: TextField(
        controller: _taskController,
        decoration: const InputDecoration(
          hintText: "Enter task...",
          border: OutlineInputBorder(),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text("Cancel"),
        ),
        ElevatedButton(
          onPressed: () {
            String taskText = _taskController.text.trim();
            if (taskText.isNotEmpty) {
              widget.onTaskAdded(taskText);
              Navigator.pop(context);
            }
          },
          child: const Text("Add"),
        ),
      ],
    );
  }
}
