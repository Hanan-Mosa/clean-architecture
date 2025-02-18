
import 'package:clean_architecture/data/models/task_model.dart';
import 'package:dio/dio.dart';

class RemoteTaskDataSource{
  final _dio = Dio();
  Future<List<TaskModel>> getTaskDataSource()async{
    final List<TaskModel> _tasks = [];
    final response = await _dio.get('https://jsonplaceholder.typicode.com/todos');
        var data = response.data;
        data.forEach((task){
          _tasks.add(TaskModel.fromApi(task));
        });

        return _tasks;

  }
}