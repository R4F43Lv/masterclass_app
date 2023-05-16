import 'package:app_masterclass/app/profile/screen/profile_screen.dart';
import 'package:app_masterclass/app/repositories/screen/repositories_screen.dart';
import 'package:app_masterclass/app/shared/widgets/custom_tabbar.dart';
import 'package:app_masterclass/app/tasks/screen/tasks_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 3,
      child: Scaffold(
        body: TabBarView(
          children: [
            TasksScreen(),
            RepositoriesScreen(),
            ProfileScreen(),
          ],
        ),
        bottomNavigationBar: CustomTabBar(),
      ),
    );
  }
}
