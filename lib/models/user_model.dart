// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
    UserModel({
        required this.jadwal,
    });

    Jadwal jadwal;

    factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        jadwal: Jadwal.fromJson(json["jadwal"]),
    );

    Map<String, dynamic> toJson() => {
        "jadwal": jadwal.toJson(),
    };
}

class Jadwal {
    Jadwal({
        required this.data,
    });

    Data data;

    factory Jadwal.fromJson(Map<String, dynamic> json) => Jadwal(
        data: Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "data": data.toJson(),
    };
}

class Data {
    Data({
        required this.subuh,
        required this.dzuhur,
        required this.ashar,
        required this.maghrib,
        required this.isya,
        required this.tanggal,
    });

    String subuh;
    String dzuhur;
    String ashar;
    String maghrib;
    String isya;
    String tanggal;

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        subuh: json["subuh"],
        dzuhur: json["dzuhur"],
        ashar: json["ashar"],
        maghrib: json["maghrib"],
        isya: json["isya"],
        tanggal: json["tanggal"],
    );

    Map<String, dynamic> toJson() => {
        "subuh": subuh,
        "dzuhur": dzuhur,
        "ashar": ashar,
        "maghrib": maghrib,
        "isya": isya,
        "tanggal": tanggal,
    };
}
