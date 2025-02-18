import 'package:clean_architecture/data/models/task_model.dart';
import 'package:clean_architecture/domain/usecases/task_use_case.dart';
import 'package:clean_architecture/presentation/bloc/task_event.dart';
import 'package:clean_architecture/presentation/bloc/task_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TaskBloc extends Bloc<TaskEvent,TaskState>{
  TasksUseCase useCase ;
  TaskBloc({required this.useCase}):super(TaskInitial()){
    on<LoadTasks>((event,emit) async {
    emit(TaskLoading());
    Future.delayed(Duration(seconds:2 ));
    try {
      List<TaskModel> taskList = await useCase.call();
        emit(TaskLoaded(tasks: taskList));

    }catch(e){
      emit(TaskError(message: e.toString()));
    }
    });
  }
 

}