// To parse this JSON data, do
//
//     final shopEntry = shopEntryFromJson(jsonString);

import 'dart:convert';

List<ShopEntry> shopEntryFromJson(String str) => List<ShopEntry>.from(json.decode(str).map((x) => ShopEntry.fromJson(x)));

String shopEntryToJson(List<ShopEntry> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ShopEntry {
    String model;
    String pk;
    Fields fields;

    ShopEntry({
        required this.model,
        required this.pk,
        required this.fields,
    });

    factory ShopEntry.fromJson(Map<String, dynamic> json) => ShopEntry(
        model: json["model"],
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
    );

    Map<String, dynamic> toJson() => {
        "model": model,
        "pk": pk,
        "fields": fields.toJson(),
    };
}

class Fields {
    int user;
    String name;
    DateTime date;
    String description;
    int price;
    int amount;

    Fields({
        required this.user,
        required this.name,
        required this.date,
        required this.description,
        required this.price,
        required this.amount,
    });

    factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        user: json["user"],
        name: json["name"],
        date: DateTime.parse(json["date"]),
        description: json["description"],
        price: json["price"],
        amount: json["amount"],
    );

    Map<String, dynamic> toJson() => {
        "user": user,
        "name": name,
        "date": "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
        "description": description,
        "price": price,
        "amount": amount,
    };
}
