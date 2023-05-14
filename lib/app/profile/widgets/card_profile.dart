import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardProfile extends StatefulWidget {
  const CardProfile({super.key});

  @override
  State<CardProfile> createState() => _CardProfileState();
}

class _CardProfileState extends State<CardProfile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 23, right: 23),
      height: 320,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Theme.of(context).cardColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 8),
          Container(
            height: 116,
            width: 116,
            decoration: BoxDecoration(
              border: Border.all(
                width: 3,
                color: Theme.of(context).scaffoldBackgroundColor,
              ),
              borderRadius: BorderRadius.circular(100),
              image: const DecorationImage(
                image: AssetImage(
                  'lib/assets/images/profile.jpg',
                ),
              ),
            ),
          ),
          const SizedBox(height: 13),
          Text(
            'Rafael Vinícius da Rosa',
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Theme.of(context).highlightColor,
              ),
            ),
          ),
          const SizedBox(height: 13),
          Text(
            'Duis rhoncus dui venenatis consequat porttitor. Etiam aliquet congue consequat. In posuere, nunc sit amet laoreet blandit, urna sapien.',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Theme.of(context).secondaryHeaderColor,
              ),
            ),
          ),
          const SizedBox(height: 45.52),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                child: Image.asset(
                  'lib/assets/icons/whatsapp.png',
                  height: 22.48,
                  color: Theme.of(context).highlightColor,
                ),
                onTap: () {},
              ),
              const SizedBox(width: 22.34),
              InkWell(
                child: Image.asset(
                  'lib/assets/icons/github-alt.png',
                  height: 22.48,
                  color: Theme.of(context).highlightColor,
                ),
                onTap: () {},
              ),
              const SizedBox(width: 22.34),
              InkWell(
                child: Image.asset(
                  'lib/assets/icons/instagram.png',
                  height: 22.48,
                  color: Theme.of(context).highlightColor,
                ),
                onTap: () {},
              ),
              const SizedBox(width: 22.34),
              InkWell(
                child: Image.asset(
                  'lib/assets/icons/facebook.png',
                  height: 22.48,
                  color: Theme.of(context).highlightColor,
                ),
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
