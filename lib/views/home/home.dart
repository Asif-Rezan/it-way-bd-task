import 'package:flutter/material.dart';
import 'package:it_way_bd_task/data/models/task/task_model.dart';
import 'package:it_way_bd_task/repository/task/task_repository.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late Future<List<TaskModel>> _tasks;

  @override
  void initState() {
    super.initState();
    _tasks = TaskRepository().getTasks();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: FutureBuilder<List<TaskModel>>(
        future: _tasks,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('No tasks available'));
          } else {
            // List of tasks
            final tasks = snapshot.data!;
            return ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (context, index) {
                final task = tasks[index];
                return ListTile(
                  title: Text(task.todo),
                  subtitle: Text('Completed: ${task.completed}'),
                );
              },
            );
          }
        },
      ),
    );
  }
}
