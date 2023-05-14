import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomBottomAppBar extends StatefulWidget {
  const CustomBottomAppBar({super.key});

  @override
  State<CustomBottomAppBar> createState() => _CustomBottomAppBarState();
}

class _CustomBottomAppBarState extends State<CustomBottomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 18, bottom: 18),
      height: 71,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              InkWell(
                child: Image.asset(
                  'lib/assets/icons/eather_target.png',
                  height: 24,
                  color: Theme.of(context).highlightColor,
                ),
              ),
              Text(
                'Atividades',
                style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                    color: Theme.of(context).highlightColor,
                  ),
                ),
              ),
            ],
          ),
          const VerticalDivider(color: Colors.grey),
          Column(
            children: [
              InkWell(
                child: Image.asset(
                  'lib/assets/icons/github.png',
                  height: 24,
                  color: Theme.of(context).highlightColor,
                ),
              ),
              Text(
                'Repositorios',
                style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                    color: Theme.of(context).highlightColor,
                  ),
                ),
              ),
            ],
          ),
          const VerticalDivider(color: Colors.grey),
          Column(
            children: [
              InkWell(
                child: Icon(
                  Icons.person,
                  size: 24,
                  color: Theme.of(context).highlightColor,
                ),
              ),
              Text(
                'Sobre o Dev',
                style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                    color: Theme.of(context).highlightColor,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
