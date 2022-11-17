import 'package:flutter/material.dart';
import 'package:my_tasks/bloc/my_task_bloc.dart';
import 'package:my_tasks/core/constants/colors.dart';
import 'package:my_tasks/data/model/tasks_model.dart';
import 'package:my_tasks/main.dart';

class RemoveTask extends StatelessWidget {
  const RemoveTask({super.key, required this.tasksModel});

  final TasksModel tasksModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: double.maxFinite,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(75, 28, 75, 28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Deseja remover "${tasksModel.title}"?',
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 42,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50,
                  width: 50,
                  child: TextButton(
                    onPressed: () {
                      bloc.add(MyTaskRemoved(tasksModel: tasksModel));
                      Navigator.of(context).pop();
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: MYTasksColors.verde,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(4),
                        ),
                      ),
                    ),
                    child: const Icon(
                      Icons.library_add_check,
                      color: MYTasksColors.branco,
                      size: 32,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                SizedBox(
                  height: 50,
                  width: 50,
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: MYTasksColors.vermelho,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(4),
                        ),
                      ),
                    ),
                    child: const Icon(
                      Icons.cancel_presentation_outlined,
                      color: MYTasksColors.branco,
                      size: 32,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
