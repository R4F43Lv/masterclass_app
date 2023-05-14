class Tasks {
  final String? icon;
  final String? modulo;
  final String? qtdExercicios;
  final String? descricao;
  final String? linkRepo;
  final Function? child;

  Tasks({
    this.icon,
    this.modulo,
    this.qtdExercicios,
    this.descricao,
    this.linkRepo,
    this.child,
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
    child: () {},
  ),
  Tasks(
    icon: 'lib/assets/icons/glasses.png',
    modulo: 'Leitura de Mockup',
    qtdExercicios: '2',
    descricao:
        'Aplicação da técnica de leitura de mockup, contendo 2 exercícios',
    linkRepo: '',
    child: () {},
  ),
  Tasks(
    icon: 'lib/assets/icons/toys.png',
    modulo: 'Playground',
    qtdExercicios: '3',
    descricao: 'Ambiente destinado a testes e estudos em geral',
    linkRepo: '',
    child: () {},
  ),
];
