import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:my_tasks/data/model/tasks_model.dart';

part 'my_task_event.dart';
part 'my_task_state.dart';

class MyTasksBloc extends Bloc<MyTasksEvent, MyTasksState> {
  MyTasksBloc() : super(const MyTasksState(tasksModel: [])) {
    on<MyTaskAdded>(addTasks);
    on<MyTaskRemoved>(removeTasks);
  }
  void addTasks(MyTaskAdded event, Emitter<MyTasksState> emit) {
    emit(MyTasksState(tasksModel: [...state.tasksModel, event.tasksModel]));
  }

  void removeTasks(MyTaskRemoved event, Emitter<MyTasksState> emit) {
    final tasksModel = state.tasksModel
        .where((t) => t.title != event.tasksModel.title)
        .toList();
    emit(MyTasksState(tasksModel: tasksModel));
  }
}
