import 'package:flutter/material.dart';
import 'package:my_tasks/core/constants/colors.dart';

class AddTasks extends StatefulWidget {
  const AddTasks({super.key});

  @override
  State<AddTasks> createState() => _AddTasksState();
}

class _AddTasksState extends State<AddTasks> {
  final taskTitle = TextEditingController();

  final taskDescription = TextEditingController();

  String title = '';

  String description = '';

  void addTask() {
    setState(() {
      title = taskTitle.text;
      description = taskDescription.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 261,
      width: 425,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(30, 28, 30, 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Add your task',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
            TextFormField(
              controller: taskTitle,
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.zero,
                labelText: 'Title',
                fillColor: MYTasksColors.dataCor,
              ),
            ),
            TextFormField(
              controller: taskDescription,
              decoration: const InputDecoration(
                labelText: 'Description',
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  height: 50,
                  width: 50,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: MYTasksColors.rosa,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(4),
                        ),
                      ),
                    ),
                    child: const Icon(
                      Icons.save,
                      color: MYTasksColors.branco,
                      size: 32,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
