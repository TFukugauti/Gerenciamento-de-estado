import 'package:flutter/material.dart';
import 'package:my_tasks/core/constants/colors.dart';
import 'package:my_tasks/data/model/tasks_model.dart';

class TaskCard extends StatelessWidget {
  TaskCard({super.key, required this.tasks});

  final TasksModel tasks;
  final now = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(30, 0, 30, 12),
      height: 160,
      width: 368,
      child: Card(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 14,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    tasks.title,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Container(
                      color: MYTasksColors.cinzaClaro,
                      height: 40,
                      width: 40,
                      child: IconButton(
                        onPressed: () => showBottomSheet(
                          context: context,
                          builder: (context) => Container(),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(40),
                            ),
                          ),
                        ),
                        icon: const Icon(Icons.close),
                        color: MYTasksColors.dataCor,
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                tasks.description,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 19),
                child: Row(
                  children: [
                    const Icon(
                      Icons.access_time,
                      color: MYTasksColors.dataCor,
                      size: 20,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      '${now.day}/${now.month}/${now.year}',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: MYTasksColors.dataCor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
