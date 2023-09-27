import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Clouds {
  int all;
  Clouds({
    required this.all,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'all': all,
    };
  }

  factory Clouds.fromMap(Map<String, dynamic> map) {
    return Clouds(
      all: map['all'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory Clouds.fromJson(String source) => Clouds.fromMap(json.decode(source) as Map<String, dynamic>);
}
