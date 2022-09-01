class I18NModel {

  String? name;
  String? code;
  Map<String, String>? texts;

  I18NModel(
      {this.name, this.code, this.texts}
  );

  I18NModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    code = json['code'];
    if (json['texts'] != null) {
      texts = Map<String, String>.from(json['texts']);
    }
  }
}