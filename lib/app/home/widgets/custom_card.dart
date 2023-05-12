import 'package:app_masterclass/app/home/models/model_atividades.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatefulWidget {
  final Atividades atividades;
  const CustomCard({super.key, required this.atividades});

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListView.builder(
        itemCount: atividades.length,
        itemBuilder: (context, index) {
          return Container(
            height: 220,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(1),
              color: Theme.of(context).cardColor,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset(atividades[index].icon!),
                    Text(atividades[index].modulo!, style: TextStyle(fontSize: 16),),
                    Text('Exercicíos', style: TextStyle(fontSize: 12),),
                    Text(atividades[index].exercicios!,),
                  ],
                ),
                Text(atividades[index].descricao!, style: TextStyle(fontSize: 14),),
                Row(
                  children: [
                    TextButton(
                      onPressed: (){
                        atividades[index].linkRepo;
                      }, 
                      child: Row(
                        children: [
                          Image.asset(''),
                          Text('Acessar o código fonte', style: TextStyle(fontSize: 12),),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Ver mais', style: TextStyle(fontSize: 12),),
                    ),
                  ],
                ),
              ],
            ),
          );
        }
      ),
    );
  }
}
