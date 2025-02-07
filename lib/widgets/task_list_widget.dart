import 'package:flutter/material.dart';
import 'package:it_way_bd_task/data/models/task/task_model.dart';
import 'package:it_way_bd_task/widgets/task_card_widget.dart';

class TaskList extends StatelessWidget {
  final List<TaskModel> tasks;
  final Function(TaskModel) onUpdateTask;

  const TaskList({
    super.key,
    required this.tasks,
    required this.onUpdateTask,
  });

  @override
  Widget build(BuildContext context) {
    if (tasks.isEmpty) {
      return _buildEmptyState();
    }
    
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        final task = tasks[index];
        return TaskCard(task: task, onUpdateTask: onUpdateTask);
      },
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.task_alt, size: 80, color: Colors.grey[400]),
          const SizedBox(height: 20),
          Text(
            'No tasks available',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.grey[700]),
          ),
        ],
      ),
    );
  }
}
