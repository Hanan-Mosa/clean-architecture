import 'package:clean_architecture/data/data_sources/remote_task_data_source.dart';
import 'package:clean_architecture/data/repositories/task_repository_impl.dart';
import 'package:clean_architecture/domain/repositories/task_repository.dart';
import 'package:clean_architecture/domain/usecases/task_use_case.dart';
import 'package:clean_architecture/presentation/bloc/task_bloc.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future <void> initInjection()async{
  getIt.registerLazySingleton<RemoteTaskDataSource>(() => RemoteTaskDataSource());
  getIt.registerLazySingleton<TaskRepository>(
          () => TaskRepositoryImpl(getIt()));
 getIt.registerFactory(()=>TaskBloc(useCase: getIt()));
 getIt.registerLazySingleton(()=>TasksUseCase(getIt()));

}