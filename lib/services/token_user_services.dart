import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import '../share_preferences/preferences.dart';



Future<Album> fetchAlbum() async {
  final response = await http.get(
    Uri.parse('https://jsonplaceholder.typicode.com/albums/1'),
    // Send authorization headers to the backend.
    headers: {
      HttpHeaders.authorizationHeader: 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ2aXF1aS5hbGFybyIsIm9maWNpbmEiOiJINHNJQUFBQUFBQUFBRE1BQUNIZjJfUUJBQUFBIiwibml0IjoiSDRzSUFBQUFBQUFBQUxNMHRMUTBOemN5TURRR0FGOWQ1ZVFLQUFBQSIsImlkIjoxMzQ3OTkyLCJleHAiOjE2NDg3MTI3OTcsImlhdCI6MTY0ODY5ODMzNywiZGVwZW5kZW5jaWEiOiJINHNJQUFBQUFBQUFBRE0wTUFBQTZsQjNJd01BQUFBPSJ9.Kx4LNhr96uzr370y_N09Dh1IwpGLPBDH_2HqSrFgLtRptjrmK8oZARcrn-dYFwNp9_vVC3jXNXppDzJx-zHi2g',
    },
  );
  final responseJson = jsonDecode(response.body);
  print(responseJson+" :::: Response:::");

  return Album.fromJson(responseJson);
}

class Album {
  final int userId;
  final int id;
  final String title;

  const Album({
    required this.userId,
    required this.id,
    required this.title,
  });

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
    );
  }
}


