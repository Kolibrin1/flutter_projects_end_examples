// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Number {
  final String text;
  final int number;
  Number({
    required this.text,
    required this.number,
  });

  Number copyWith({
    String? text,
    int? number,
  }) {
    return Number(
      text: text ?? this.text,
      number: number ?? this.number,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'text': text,
      'number': number,
    };
  }

  factory Number.fromMap(Map<String, dynamic> map) {
    return Number(
      text: map['text'] as String,
      number: map['number'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory Number.fromJson(String source) =>
      Number.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Number(text: $text, number: $number)';

  @override
  bool operator ==(covariant Number other) {
    if (identical(this, other)) return true;

    return other.text == text && other.number == number;
  }

  @override
  int get hashCode => text.hashCode ^ number.hashCode;
}
