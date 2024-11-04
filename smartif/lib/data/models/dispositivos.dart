class DispositivosModels {
  late String id;
  late String nome;
  late bool status;
  late String nomeSala;
  late int minTemperatura;
  late int maxTemperatura;

  DispositivosModels(
      {required this.id,
      required this.nome,
      required this.status,
      required this.nomeSala,
      required this.minTemperatura,
      required this.maxTemperatura});

  factory DispositivosModels.isEmpty() => DispositivosModels(
      id: '',
      nome: '',
      nomeSala: '',
      status: false,
      minTemperatura: 0,
      maxTemperatura: 0);

  DispositivosModels.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    status = json['status'];
    nome = json['modelo']['nome'];
    minTemperatura = json['modelo']['min_temperatura'];
    maxTemperatura = json['modelo']['max_temperatura'];
    nomeSala = json['sala']['nome'];
  }
}
