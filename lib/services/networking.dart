import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'anime.dart';

List<Anime> animeList = [];
Future<List<Anime>> getData() async {
  final response = await http.get(Uri.parse(
      'https://kitsu.io/api/edge/anime?page[limit]=10&page[offset]=0'));

  var jsonResponse = json.decode(response.body)['data'];
  if (response.statusCode == 200) {
    for (var card in jsonResponse) {
      Anime animeCard = Anime(
          title: card['attributes']['canonicalTitle'],
          status: card['attributes']['status'],
          id: card['id']);
      animeList.add(animeCard);
    }

    return animeList;
  } else {
    throw Exception('Failed to load album');
  }
}
