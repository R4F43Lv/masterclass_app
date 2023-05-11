import 'package:flutter/material.dart';

class CustomCard extends StatefulWidget {
  const CustomCard({super.key});

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: 220,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(1),
          color: Theme.of(context).cardColor,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(''),
                Text('Type', style: TextStyle(fontSize: 16),),
                Text('Exercicios: ', style: TextStyle(fontSize: 12),),
                Text('1'),
              ],
            ),
            Text('Lorem Impsum', style: TextStyle(fontSize: 14),),
            Row(
              children: [
                Image.asset(''),
                Text('Acessar o código fonte', style: TextStyle(fontSize: 12),),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Ver mais', style: TextStyle(fontSize: 12),),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
