// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
    UserModel({
        required this.nomor,
        required this.nama,
        required this.name,
        required this.ayat,
        required this.type,
        required this.arti,
        required this.keterangan,
    });

    String nama;
    String name;
    String nomor;
    String ayat;
    String type;
    String arti;
    String keterangan;

    factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        nomor: json["nomor"],
        nama: json["nama"],
        name: json["name"],
        ayat: json["ayat"],
        type: json["type"],
        arti: json["arti"],
        keterangan: json["keterangan"],
    );

    Map<String, dynamic> toJson() => {
        "nomor": nomor,
        "nama": nama,
        "name": name,
        "ayat": ayat,
        "type": type,
        "arti": arti,
        "keterangan": keterangan,
    };
}
