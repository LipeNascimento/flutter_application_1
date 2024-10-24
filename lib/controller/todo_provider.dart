import 'package:flutter/material.dart';
import 'package:to_do_list_app/controller/database_conn.dart';
import 'package:to_do_list_app/model/todo_model.dart';


class TodoProvider extends ChangeNotifier {
  
  List<ToDoListModel> _todoList = [];

  
  List<ToDoListModel> get todoList => _todoList;

  
  TodoProvider() {
    dbConnection();
    _fetchTasks();
  }

  
  Future<void> _fetchTasks() async {
    _todoList = await getAllTask();
    notifyListeners();
  }

  
 
  Future<void> addTask(ToDoListModel task) async {
    await insertTask(task);
    _fetchTasks();
    notifyListeners();
  }

  
 
  Future<void> updateToDoTask(ToDoListModel task) async {
    await updateTask(task);
    _fetchTasks();
    notifyListeners();
  }

  

  Future<void> deleteToDoTask(ToDoListModel task) async {
    await deleteTask(task);
    _fetchTasks();
    notifyListeners();
  }

  

  
  void toggleTaskCompletion(ToDoListModel task) {
    final index = _todoList.indexOf(task);
    _todoList[index].isComplete = !_todoList[index].isComplete;
    notifyListeners();
  }
}
