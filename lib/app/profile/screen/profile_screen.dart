import 'package:app_masterclass/app/profile/widgets/card_profile.dart';
import 'package:app_masterclass/app/profile/widgets/graphic_skills.dart';
import 'package:app_masterclass/app/profile/widgets/technologies_list.dart';
import 'package:app_masterclass/app/shared/theme/theme.dart';
import 'package:app_masterclass/app/shared/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    ChangeTheme changeTheme = Provider.of<ChangeTheme>(context);
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomAppBar(
            title: 'Sobre o dev',
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
          const CardProfile(),
          const TechnologiesList(),
          const GraphicSkills(),
        ],
      ),
    );
  }
}
