class dokter {
  final String name;
  final String spesialis;
  final String pengalaman;
  final String pic;
  final String desc;

  const dokter({
    required this.name,
    required this.spesialis,
    required this.pengalaman,
    required this.pic,
    required this.desc,
  });

  factory dokter.fromJson(Map<String, dynamic> json) => dokter(
        name: json['name'],
        spesialis: json['spesialis'],
        pengalaman: json['pengalaman'],
        pic: json['pic'],
        desc: json['desc'],
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'spesialis': spesialis,
        'pengalaman': pengalaman,
        'pic': pic,
        'desc': desc,
      };
}
