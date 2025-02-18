import 'package:clean_architecture/data/data_sources/remote_task_data_source.dart';
import 'package:clean_architecture/data/models/task_model.dart';
import 'package:clean_architecture/domain/repositories/task_repository.dart';

class TaskRepositoryImpl extends TaskRepository {
  RemoteTaskDataSource _dataSource;

  TaskRepositoryImpl(this._dataSource);

  @override
  Future<List<TaskModel>> getTasks() async {
      return await _dataSource.getTaskDataSource();
    }
}