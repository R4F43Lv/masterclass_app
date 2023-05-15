import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GraphicSkills extends StatefulWidget {
  const GraphicSkills({super.key});

  @override
  State<GraphicSkills> createState() => _GraphicSkillsState();
}

class _GraphicSkillsState extends State<GraphicSkills> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Habilidades e Competências',
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Theme.of(context).highlightColor,
            ),
          ),
        ),
        const SizedBox(height: 8),
        Container(
          height: 181,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Theme.of(context).cardColor,
          ),
          padding:
              const EdgeInsets.only(top: 17, left: 15, right: 15, bottom: 17),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Dart/Flutter',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context).secondaryHeaderColor,
                      ),
                    ),
                  ),
                  Stack(
                    children: [
                      Container(
                        width: 255,
                        height: 9,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Theme.of(context).scaffoldBackgroundColor,
                        ),
                      ),
                      Container(
                        width: 194,
                        height: 9,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'React',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context).secondaryHeaderColor,
                      ),
                    ),
                  ),
                  Stack(
                    children: [
                      Container(
                        width: 255,
                        height: 9,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Theme.of(context).scaffoldBackgroundColor,
                        ),
                      ),
                      Container(
                        width: 125,
                        height: 9,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'JavaScript',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context).secondaryHeaderColor,
                      ),
                    ),
                  ),
                  Stack(
                    children: [
                      Container(
                        width: 255,
                        height: 9,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Theme.of(context).scaffoldBackgroundColor,
                        ),
                      ),
                      Container(
                        width: 175,
                        height: 9,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'HTML',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context).secondaryHeaderColor,
                      ),
                    ),
                  ),
                  Stack(
                    children: [
                      Container(
                        width: 255,
                        height: 9,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Theme.of(context).scaffoldBackgroundColor,
                        ),
                      ),
                      Container(
                        width: 235,
                        height: 9,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'CSS',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context).secondaryHeaderColor,
                      ),
                    ),
                  ),
                  Stack(
                    children: [
                      Container(
                        width: 255,
                        height: 9,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Theme.of(context).scaffoldBackgroundColor,
                        ),
                      ),
                      Container(
                        width: 199,
                        height: 9,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
