import 'package:app_masterclass/app/profile/widgets/card_profile.dart';
import 'package:app_masterclass/app/shared/theme/theme.dart';
import 'package:app_masterclass/app/shared/widgets/custom_appbar.dart';
import 'package:app_masterclass/app/shared/widgets/custom_bottom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    ChangeTheme changeTheme = Provider.of<ChangeTheme>(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 14, right: 14),
        child: Column(
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
            // const TasksScreen(),
            const CardProfile(),
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomAppBar(),
    );
  }
}
