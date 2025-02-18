
class TaskModel  {
  int userId;
  int id;

  String title;
  bool completed;

  TaskModel(
      {required this.id,
      required this.userId,
      required this.title,
      required this.completed});

  factory TaskModel.fromApi(Map<String, dynamic> json) {
    return TaskModel(
        id: json['id'],
        userId: json['userId'],
        title: json['title'],
        completed: json['completed']);
  }

  Map<String,dynamic> toApi(){
    return {
      'userId': userId,
      'id': id,
      'title': title,
      'completed': completed,
    };
  }
}
