class DispositivosModels {
  int? id;
  TipoId? tipoId;
  String? marca;
  String? modelo;
  bool? status;
  Sala? sala;

  DispositivosModels(
      {this.id, this.tipoId, this.marca, this.modelo, this.status, this.sala});

  DispositivosModels.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    tipoId = json['tipo_id'] != null ? TipoId.fromJson(json['tipo_id']) : null;
    status = json['status'];
    sala = json['sala'] != null ? Sala.fromJson(json['sala']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    if (tipoId != null) {
      data['tipo_id'] = tipoId!.toJson();
    }
    data['status'] = status;
    if (sala != null) {
      data['sala'] = sala!.toJson();
    }
    return data;
  }
}

class TipoId {
  String? nome;

  TipoId({this.nome});

  TipoId.fromJson(Map<String, dynamic> json) {
    nome = json['nome'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['nome'] = nome;
    return data;
  }

  @override
  String toString() => nome ?? '';
}

class Sala {
  String? nome;
  TipoId? local;

  Sala({this.nome, this.local});

  Sala.fromJson(Map<String, dynamic> json) {
    nome = json['nome'];
    local = json['local'] != null ? TipoId.fromJson(json['local']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['nome'] = nome;
    if (local != null) {
      data['local'] = local!.toJson();
    }
    return data;
  }
}
