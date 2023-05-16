import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTaskCard extends StatefulWidget {
  final String? localImage;
  final String? titleTask;
  final String? countTasks;
  final String? detailsTask;
  final String? urlRepo;

  const CustomTaskCard({
    super.key,
    this.localImage,
    this.titleTask,
    this.countTasks,
    this.detailsTask,
    this.urlRepo,
  });

  @override
  State<CustomTaskCard> createState() => _CustomTaskCardState();
}

class _CustomTaskCardState extends State<CustomTaskCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 14, right: 14, bottom: 14),
      child: Column(
        children: [
          Container(
            height: 220,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Theme.of(context).cardColor,
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 15, left: 15, right: 15, bottom: 9.5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 43,
                            width: 43,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Theme.of(context).primaryColor,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(5),
                              child: Image.asset(
                                widget.localImage!,
                                color:
                                    Theme.of(context).scaffoldBackgroundColor,
                              ),
                            ),
                          ),
                          const SizedBox(width: 13),
                          Text(
                            widget.titleTask!,
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Theme.of(context).highlightColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Exercicíos:',
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Theme.of(context).secondaryHeaderColor,
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Text(
                            widget.countTasks!,
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Theme.of(context).highlightColor,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Text(
                    widget.detailsTask!,
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Theme.of(context).secondaryHeaderColor,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                          widget.urlRepo;
                        },
                        child: Row(
                          children: [
                            Image.asset(
                              'lib/assets/icons/github.png',
                              width: 20,
                              color: Theme.of(context).highlightColor,
                            ),
                            const SizedBox(width: 4.36),
                            Text(
                              'Acessar o código fonte',
                              style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Theme.of(context).secondaryHeaderColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        child: Container(
                          padding: const EdgeInsets.only(
                              top: 8.75, left: 33, right: 33, bottom: 8.75),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Theme.of(context).primaryColor,
                          ),
                          child: Text(
                            'Ver mais',
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Color(0xffEDF4F8),
                              ),
                            ),
                          ),
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
