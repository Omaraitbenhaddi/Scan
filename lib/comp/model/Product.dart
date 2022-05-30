import 'dart:convert';

class ProductModel {
  int code;
  ProductModel({
    required this.code,
  });

  ProductModel copyWith({
    int? code,
  }) {
    return ProductModel(
      code: code ?? this.code,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'code': code,
    };
  }

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      code: map['code']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductModel.fromJson(String source) =>
      ProductModel.fromMap(json.decode(source));

  @override
  String toString() => 'Product(code: $code)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ProductModel && other.code == code;
  }

  @override
  int get hashCode => code.hashCode;
}
