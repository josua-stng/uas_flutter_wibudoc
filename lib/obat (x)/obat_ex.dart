class obat {
  final String name;
  final String untuk;

  final String pic;
  final String desc;

  const obat({
    required this.name,
    required this.untuk,
    required this.pic,
    required this.desc,
  });

  factory obat.fromJson(Map<String, dynamic> json) => obat(
        name: json['name'],
        untuk: json['untuk'],
        pic: json['pic'],
        desc: json['desc'],
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'untuk': untuk,
        'pic': pic,
        'desc': desc,
      };
}
