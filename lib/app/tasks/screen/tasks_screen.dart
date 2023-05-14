import 'package:app_masterclass/app/tasks/models/model_tasks.dart';
import 'package:app_masterclass/app/tasks/widgets/custom_task_card.dart';
import 'package:flutter/material.dart';

class TasksScreen extends StatefulWidget {
  final Tasks? tasks;
  const TasksScreen({super.key, this.tasks});

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        // separatorBuilder: (context, index) => const SizedBox(height: 16),
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return CustomTaskCard(
            localImage: tasks[index].icon!,
            titleTask: tasks[index].modulo!,
            countTasks: tasks[index].qtdExercicios!,
            detailsTask: tasks[index].descricao!,
            urlRepo: tasks[index].linkRepo!,
          );
        },
      ),
    );
  }
}
