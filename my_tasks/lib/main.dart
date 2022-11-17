import 'package:flutter/material.dart';
import 'package:my_tasks/bloc/my_task_bloc.dart';

import 'presentation/app/app.dart';

final bloc = MyTasksBloc();

void main() {
  runApp(const App());
}
