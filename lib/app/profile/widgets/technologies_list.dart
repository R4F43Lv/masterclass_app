import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TechnologiesList extends StatefulWidget {
  const TechnologiesList({super.key});

  @override
  State<TechnologiesList> createState() => _TechnologiesListState();
}

class _TechnologiesListState extends State<TechnologiesList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Tecnologias Favoritas',
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Theme.of(context).highlightColor,
            ),
          ),
        ),
        const SizedBox(height: 8),
        SizedBox(
          height: 120,
          child: ListView.builder(
            itemCount: 5,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  Container(
                    height: 100,
                    width: 94,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Theme.of(context).cardColor,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('lib/assets/icons/flutter.png',
                            height: 48,
                            color: Theme.of(context).highlightColor),
                        const SizedBox(height: 8.6),
                        Text(
                          'Flutter',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Theme.of(context).highlightColor,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(width: 20),
                ],
              );
            },
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
