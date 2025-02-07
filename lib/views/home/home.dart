import 'package:flutter/material.dart';
import 'package:it_way_bd_task/data/models/add_task/add_task_model.dart';
import 'package:it_way_bd_task/data/models/task/task_model.dart';
import 'package:it_way_bd_task/repository/task/task_repository.dart';
import 'package:it_way_bd_task/repository/add_task/add_task_repository.dart';
import 'package:it_way_bd_task/repository/update_task/update_task_repository.dart';
import 'package:it_way_bd_task/utils/toast_utils.dart';
import 'package:it_way_bd_task/widgets/add_task_dialog.dart';
import 'package:it_way_bd_task/widgets/task_list_widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late Future<List<TaskModel>> _tasks;
  final TaskRepository _taskRepository = TaskRepository();
  final AddTaskRepository _addTaskRepository = AddTaskRepository();
  final UpdateTaskRepository _updateTaskRepository = UpdateTaskRepository();

  @override
  void initState() {
    super.initState();
    _fetchTasks();
  }

  void _fetchTasks() {
    setState(() {
      _tasks = _taskRepository.getTasks();
    });
  }

  Future<void> _addTask(String taskText) async {
    try {
      final tasks = await _tasks;
      int userId = tasks.isNotEmpty ? tasks.first.userId : 1;
      int nextId = tasks.isNotEmpty
          ? (tasks.map((task) => task.id).reduce((a, b) => a > b ? a : b) + 1)
          : 1;

      final newTask = AddTaskModel(
          id: nextId, todo: taskText, completed: false, userId: userId);
      await _addTaskRepository.addTask(newTask);
      _fetchTasks();

      showCustomToast(context,
          "✅ Task added successfully!\n⚠️ This is a dummy API, so your todo is not saved on the server.");
    } catch (e) {
      print("Error adding task: $e");
    }
  }

  Future<void> _updateTask(TaskModel task) async {
    try {
      await _updateTaskRepository.updateTask(task.id, !task.completed);
      _fetchTasks();

      showCustomToast(context,
          "✅ Task updated successfully! \n⚠️ This is a dummy API, so your update is not saved on the server.");
    } catch (e) {
      print("Error updating task: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('Task Manager',
            style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        elevation: 0,
      ),
      body: FutureBuilder<List<TaskModel>>(
        future: _tasks,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(
                child: Text('Error: ${snapshot.error}',
                    style: const TextStyle(color: Colors.red, fontSize: 16)));
          } else {
            return TaskList(
                tasks: snapshot.data ?? [], onUpdateTask: _updateTask);
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showDialog(
          context: context,
          builder: (context) => AddTaskDialog(onTaskAdded: _addTask),
        ),
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add, size: 30, color: Colors.white),
      ),
    );
  }
}
