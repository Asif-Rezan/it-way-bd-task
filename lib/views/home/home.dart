import 'package:flutter/material.dart';
import 'package:it_way_bd_task/data/models/add_task/add_task_model.dart';
import 'package:it_way_bd_task/data/models/task/task_model.dart';
import 'package:it_way_bd_task/repository/add_task/add_task_repository.dart';
import 'package:it_way_bd_task/repository/task/task_repository.dart';
import 'package:it_way_bd_task/repository/update_task/update_task_repository.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';

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

  /// Fetch tasks from API
  void _fetchTasks() {
    setState(() {
      _tasks = _taskRepository.getTasks();
    });
  }

  /// Show Add Task Dialog
  void _showAddTaskDialog(List<TaskModel> tasks) {
    TextEditingController taskController = TextEditingController();

    int userId = tasks.isNotEmpty ? tasks.first.userId : 1;
    int nextId = tasks.isNotEmpty
        ? (tasks.map((task) => task.id).reduce((a, b) => a > b ? a : b) + 1)
        : 1;

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Add New Task"),
          content: TextField(
            controller: taskController,
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
              onPressed: () async {
                String taskText = taskController.text.trim();
                if (taskText.isNotEmpty) {
                  await _addTask(nextId, taskText, userId);
                  Navigator.pop(context);
                }
              },
              child: const Text("Add"),
            ),
          ],
        );
      },
    );
  }

  /// Add task to API and refresh list
  Future<void> _addTask(int id, String taskText, int userId) async {
    try {
      final newTask =
          AddTaskModel(id: id, todo: taskText, completed: false, userId: userId);
      await _addTaskRepository.addTask(newTask);
      _fetchTasks(); // Refresh task list
      showToast(
        "✅ Task added successfully!\n⚠️ This is a dummy API, so your todo is not saved on the server.",
        context: context,
        animation: StyledToastAnimation.slideFromLeft,
        position: StyledToastPosition.top,
        duration: const Duration(seconds: 10),
      );
    } catch (e) {
      print("Error adding task: $e");
    }
  }

  /// Update task completion status
 Future<void> _updateTask(TaskModel task) async {
  try {
    await _updateTaskRepository.updateTask(task.id, !task.completed);
    _fetchTasks(); // Refresh task list
    showToast(
      "✅ Task updated successfully! \n⚠️ This is a dummy API, so your update is not saved on the server. ",
      context: context,
      animation: StyledToastAnimation.slideFromLeft,
      position: StyledToastPosition.top,
      duration: const Duration(seconds: 3),
    );
  } catch (e) {
    print("Error updating task: $e");
    showToast(
      "❌ Failed to update task.",
      context: context,
      animation: StyledToastAnimation.fade,
      position: StyledToastPosition.top,
      duration: const Duration(seconds: 3),
    );
  }
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text(
          'Task Manager',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Implement search functionality
            },
          ),
        ],
      ),
      body: FutureBuilder<List<TaskModel>>(
        future: _tasks,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(
              child: Text(
                'Error: ${snapshot.error}',
                style: const TextStyle(color: Colors.red, fontSize: 16),
              ),
            );
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return _buildEmptyState();
          } else {
            final tasks = snapshot.data!;
            return ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: tasks.length,
              itemBuilder: (context, index) {
                final task = tasks[index];
                return _buildTaskCard(task);
              },
            );
          }
        },
      ),
      floatingActionButton: FutureBuilder<List<TaskModel>>(
        future: _tasks,
        builder: (context, snapshot) {
          if (snapshot.hasData && snapshot.data!.isNotEmpty) {
            return FloatingActionButton(
              onPressed: () => _showAddTaskDialog(snapshot.data!),
              backgroundColor: Colors.blue,
              child: const Icon(Icons.add, size: 30, color: Colors.white),
            );
          }
          return const SizedBox.shrink(); // Hide FAB if no user data is available
        },
      ),
    );
  }

  /// Task Card UI with onTap to update task
  Widget _buildTaskCard(TaskModel task) {
    return InkWell(
      onTap: () => _updateTask(task),
      borderRadius: BorderRadius.circular(12),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          leading: Icon(
            task.completed ? Icons.check_circle : Icons.radio_button_unchecked,
            color: task.completed ? Colors.green : Colors.grey,
            size: 28,
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
      ),
    );
  }

  /// Empty State UI
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
