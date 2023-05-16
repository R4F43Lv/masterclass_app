import 'package:app_masterclass/app/shared/theme/theme.dart';
import 'package:app_masterclass/app/shared/widgets/custom_appbar.dart';
import 'package:app_masterclass/app/tasks/models/model_tasks.dart';
import 'package:app_masterclass/app/tasks/widgets/custom_task_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TasksScreen extends StatefulWidget {
  final Tasks? tasks;
  const TasksScreen({Key? key, this.tasks}) : super(key: key);

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  @override
  Widget build(BuildContext context) {
    ChangeTheme changeTheme = Provider.of<ChangeTheme>(context);
    return Column(
      children: [
        CustomAppBar(
          title: 'Atividades',
          subtitle: 'Flutterando MasterClass',
          inkChangeTheme: InkWell(
            onTap: () {
              changeTheme.notifyTheme();
            },
            child: Image.asset(
              'lib/assets/icons/moon.png',
              color: Theme.of(context).highlightColor,
              height: 24,
            ),
          ),
        ),
        Expanded(
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
        ),
      ],
    );
  }
}
