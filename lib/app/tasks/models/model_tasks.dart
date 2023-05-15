class Tasks {
  final String? icon;
  final String? modulo;
  final String? qtdExercicios;
  final String? descricao;
  final String? linkRepo;
  final List<Exercicios>? exercicios;

  Tasks({
    this.icon,
    this.modulo,
    this.qtdExercicios,
    this.descricao,
    this.linkRepo,
    this.exercicios,
  });
}

class Exercicios {
  final String? id;
  final String? name;
  final String? router;

  Exercicios({
    this.id,
    this.name,
    this.router,
  });
}

final List<Tasks> tasks = [
  Tasks(
    icon: 'lib/assets/icons/running.png',
    modulo: 'Animações',
    qtdExercicios: '4',
    descricao:
        'Estudos sobre animações implícitas e controladas, contendo 4 exercícios e 2 estudos',
    linkRepo: '',
    exercicios: [],
  ),
  Tasks(
    icon: 'lib/assets/icons/glasses.png',
    modulo: 'Leitura de Mockup',
    qtdExercicios: '2',
    descricao:
        'Aplicação da técnica de leitura de mockup, contendo 2 exercícios',
    linkRepo: '',
    exercicios: [],
  ),
  Tasks(
    icon: 'lib/assets/icons/toys.png',
    modulo: 'Playground',
    qtdExercicios: '3',
    descricao: 'Ambiente destinado a testes e estudos em geral',
    linkRepo: '',
    exercicios: [],
  ),
];
