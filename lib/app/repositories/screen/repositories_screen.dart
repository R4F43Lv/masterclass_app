import 'package:app_masterclass/app/shared/theme/theme.dart';
import 'package:app_masterclass/app/shared/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RepositoriesScreen extends StatefulWidget {
  const RepositoriesScreen({super.key});

  @override
  State<RepositoriesScreen> createState() => _RepositoriesScreenState();
}

class _RepositoriesScreenState extends State<RepositoriesScreen> {
  @override
  Widget build(BuildContext context) {
    ChangeTheme changeTheme = Provider.of<ChangeTheme>(context);
    return Column(
      children: [
        CustomAppBar(
          title: 'Repositórios',
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
      ],
    );
  }
}
