import 'package:app_masterclass/app/shared/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    ChangeTheme changeTheme = Provider.of<ChangeTheme>(context);
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 14, right: 14, top: 42),
            height: 110,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'lib/assets/images/logo.png',
                      height: 48,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Atividades',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Theme.of(context).highlightColor,
                            ),
                          ),
                        ),
                        Text(
                          'Flutterando MasterClass',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                                color: Theme.of(context).highlightColor,),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {
                    changeTheme.notifyTheme();
                  },
                  child: Image.asset(
                    'lib/assets/icons/moon.png',
                    color: Theme.of(context).highlightColor,
                    height: 24,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        type: BottomNavigationBarType.fixed,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        fixedColor: Theme.of(context).highlightColor,
        unselectedLabelStyle: GoogleFonts.poppins(
          textStyle: TextStyle(
            fontSize: 11,
            color: Theme.of(context).highlightColor,
          ),
        ),
        selectedLabelStyle: GoogleFonts.poppins(
          textStyle: TextStyle(
            fontSize: 11,
            color: Theme.of(context).highlightColor,
          ),
        ),
        elevation: 0,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'lib/assets/icons/eather_target.png',
              height: 24,
              color: Theme.of(context).highlightColor,
            ),
            label: 'Atividades',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'lib/assets/icons/github.png',
              height: 24.62,
              color: Theme.of(context).highlightColor,
            ),
            label: 'Repositorios',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person,
                size: 24, color: Theme.of(context).highlightColor),
            label: 'Sobre o Dev',
          ),
        ],
      ),
    );
  }
}
