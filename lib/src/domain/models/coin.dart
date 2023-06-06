class Coin {
  String? id;
  String? name;
  double? price;
  String? symbol;
  int? rank;
  bool? isNew;
  bool? isActive;
  String? type;

  Coin(
      {this.id,
      this.name,
      this.price,
      this.symbol,
      this.rank,
      this.isNew,
      this.isActive,
      this.type});

  Coin.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    price = json['price'];
    symbol = json['symbol'];
    rank = json['rank'];
    isNew = json['is_new'];
    isActive = json['is_active'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['price'] = price;
    data['symbol'] = symbol;
    data['rank'] = rank;
    data['is_new'] = isNew;
    data['is_active'] = isActive;
    data['type'] = type;
    return data;
  }
}
