class Atividades {
  final String? icon;
  final String? modulo;
  final String? exercicios;
  final String? descricao;
  final String? linkRepo;
  final Function? child;

  Atividades(
    {this.icon,
    this.modulo,
    this.exercicios,
    this.descricao,
    this.linkRepo,
    this.child,}
  );
}

final List<Atividades> atividades = [
  Atividades(
    icon: '',
    modulo: '',
    exercicios: '',
    descricao: '',
    linkRepo: '',
    child: (){},
  ),
  Atividades(
    icon: '',
    modulo: '',
    exercicios: '',
    descricao: '',
    linkRepo: '',
    child: (){},
  ),
  Atividades(
    icon: '',
    modulo: '',
    exercicios: '',
    descricao: '',
    linkRepo: '',
    child: (){},
  ),
];
