import 'package:flutter/material.dart';
import 'package:it_way_bd_task/data/models/task/task_model.dart';

class TaskCard extends StatelessWidget {
  final TaskModel task;
  final Function(TaskModel) onUpdateTask;

  const TaskCard({
    Key? key,
    required this.task,
    required this.onUpdateTask,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        leading: GestureDetector(  
          onTap: () => onUpdateTask(task),
          child: Icon(
            task.completed ? Icons.check_circle : Icons.radio_button_unchecked,
            color: task.completed ? Colors.green : Colors.grey,
            size: 28,
          ),
        ),
        title: Text(
          task.todo,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            decoration: task.completed ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: const Icon(Icons.arrow_forward_ios, size: 18, color: Colors.grey),
      ),
    );
  }
}
