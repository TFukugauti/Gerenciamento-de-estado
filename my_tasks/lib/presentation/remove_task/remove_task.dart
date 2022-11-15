import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:my_tasks/core/constants/colors.dart';
import 'package:my_tasks/data/model/tasks_model.dart';

class RemoveTask extends StatelessWidget {
  const RemoveTask({super.key, required this.tasks});

  final TasksModel tasks;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 174,
      width: 428,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(75, 28, 75, 28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Deseja remover "${tasks.title}"?',
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
                    onPressed: () {},
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
                    onPressed: () {},
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
