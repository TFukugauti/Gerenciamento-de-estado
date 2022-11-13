import 'package:flutter/material.dart';
import 'package:my_tasks/core/constants/colors.dart';

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
                      child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Container();
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
                      builder: (context) => Container(),
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
