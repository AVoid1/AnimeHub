import 'package:flutter/material.dart';

class Anime {
  final String id;
  final String title;
  final String status;

  const Anime(
      {
      // required this.id,
      required this.title,
      required this.status,
      required this.id});

  factory Anime.fromJson(Map<String, dynamic> json) {
    return Anime(
      // canonicalTitle: json['canonicalTitle'],
      id: json['id'],
      status: json['attributes']['status'],
      title: json['attributes']['canonicalTitle'],
    );
  }
}
