// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'my_task_bloc.dart';

abstract class MyTasksEvent {
  const MyTasksEvent();
}

class MyTaskAdded extends MyTasksEvent {
  final TasksModel tasksModel;
  const MyTaskAdded({
    required this.tasksModel,
  });
}

class MyTaskRemoved extends MyTasksEvent {
  final TasksModel tasksModel;
  const MyTaskRemoved({
    required this.tasksModel,
  });
}
