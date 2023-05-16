import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({super.key});

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  @override
  Widget build(BuildContext context) {
    return TabBar(
      labelStyle: GoogleFonts.montserrat(
        textStyle: const TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.w400,
        ),
      ),
      indicatorPadding: const EdgeInsets.only(
        top: 13,
        left: 40,
        right: 40,
        bottom: 35,
      ),
      indicator: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Theme.of(context).cardColor,
      ),
      labelColor: Theme.of(context).highlightColor,
      tabs: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
          ),
          child: Tab(
            icon: Image.asset(
              'lib/assets/icons/eather_target.png',
              height: 24,
              color: Theme.of(context).highlightColor,
            ),
            text: 'Atividades',
          ),
        ),
        Tab(
          icon: Image.asset(
            'lib/assets/icons/github.png',
            height: 24,
            color: Theme.of(context).highlightColor,
          ),
          text: 'Repositórios',
        ),
        Tab(
          icon: Icon(
            Icons.person,
            size: 24,
            color: Theme.of(context).highlightColor,
          ),
          text: 'Sobre o Dev',
        ),
      ],
    );
  }
}
