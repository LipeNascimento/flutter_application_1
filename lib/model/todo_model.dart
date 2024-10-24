class ToDoListModel {
  int? taskId;
  String title;
  String description;
  String date;
  bool isComplete;

  ToDoListModel({
    this.taskId,
    required this.title,
    required this.description,
    required this.date,
    required this.isComplete,
  });

 
  Map<String, dynamic> todoTaskMap() {
    return {
      'taskId': taskId,
      'title': title,
      'description': description,
      'date': date,
      'isComplete': isComplete 
    };
  }

   @override
  String toString(){
    return '{taskId:$taskId,title:$title,description:$description,date:$date,isComplete:$isComplete}';
  }

  
}
