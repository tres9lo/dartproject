import 'dart:io';

class Task {
  String name;
  bool isCompleted;

  Task(this.name) : isCompleted = false;

  void complete() {
    isCompleted = true;
  }

  @override
  String toString() {
    return '${isCompleted ? '[x]' : '[ ]'} $name';
  }
}

class TaskManager {
  List<Task> tasks = [];

  void addTask(String name) {
    tasks.add(Task(name));
    print('Task "$name" added.');
  }

  void completeTask(int index) {
    if (index >= 0 && index < tasks.length) {
      tasks[index].complete();
      print('Task "${tasks[index].name}" marked as complete.');
    } else {
      print('Invalid task index.');
    }
  }

  void listTasks() {
    if (tasks.isEmpty) {
      print('No tasks available.');
    } else {
      print('Your Tasks:');
      for (var i = 0; i < tasks.length; i++) {
        print('$i: ${tasks[i]}');
      }
    }
  }
}

void main() {
  TaskManager taskManager = TaskManager();
  bool running = true;

  while (running) {
    print('\nTask Manager');
    print('1. Add Task');
    print('2. Complete Task');
    print('3. List Tasks');
    print('4. Exit');
    stdout.write('Choose an option: ');

    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        stdout.write('Enter task name: ');
        String? taskName = stdin.readLineSync();
        if (taskName != null && taskName.isNotEmpty) {
          taskManager.addTask(taskName);
        } else {
          print('Task name cannot be empty.');
        }
        break;
      case '2':
        stdout.write('Enter task index to complete: ');
        String? indexInput = stdin.readLineSync();
        if (indexInput != null) {
          int index = int.tryParse(indexInput) ?? -1;
          taskManager.completeTask(index);
        }
        break;
      case '3':
        taskManager.listTasks();
        break;
      case '4':
        running = false;
        print('Exiting Task Manager. Goodbye!');
        break;
      default:
        print('Invalid option. Please try again.');
    }
  }
}
