import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_tasks/bloc/my_task_bloc.dart';
import 'package:my_tasks/core/constants/colors.dart';
import 'package:my_tasks/data/model/tasks_model.dart';
import 'package:my_tasks/main.dart';
import 'package:my_tasks/presentation/add_tasks/add_tasks.dart';
import 'package:my_tasks/presentation/tasks_card/task_card.dart';

class MyTasks extends StatelessWidget {
  const MyTasks({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: MYTasksColors.cinzaClaro,
          title: const Text(
            'My Tasks',
            style: TextStyle(
              color: MYTasksColors.titleColor,
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        body: Container(
          color: MYTasksColors.cinzaEscuro,
          child: Stack(
            children: [
              Column(
                children: [
                  Expanded(
                      child: BlocBuilder<MyTasksBloc, MyTasksState>(
                    bloc: bloc,
                    builder: (context, state) {
                      return ListView.builder(
                        itemCount: state.tasksModel.length,
                        itemBuilder: (context, index) {
                          final tasks = state.tasksModel[index];
                          return TaskCard(
                            tasksModel:
                                TasksModel(tasks.title, tasks.description),
                          );
                        },
                      );
                    },
                  ))
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 26, 28),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: FloatingActionButton(
                    onPressed: () => showModalBottomSheet(
                      context: context,
                      builder: (context) => const AddTasks(),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(40),
                        ),
                      ),
                    ),
                    backgroundColor: MYTasksColors.rosa,
                    child: const Icon(
                      Icons.add,
                      size: 49,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
