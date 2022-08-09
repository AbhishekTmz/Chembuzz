class Categorymodel {
  final int id;
  final String name;
  final String createdat;
  final String publishedat;
  Categorymodel(
      {required this.id,
      required this.name,
      required this.createdat,
      required this.publishedat});
  factory Categorymodel.fromjson(Map<String, dynamic> json) {
    return Categorymodel(
        id: json['id'],
        name: json['name'],
        createdat: json['created_at'],
        publishedat: json['updated_at']);
  }
}
