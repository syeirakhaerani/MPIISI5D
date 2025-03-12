import 'package:flutter/material.dart';
import 'package:flutter_application_film/models/movie.dart';

class DetailScreen extends StatelessWidget {
  final Movie movie;
  const DetailScreen({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movie.title),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            'https://image.tmdb.org/t/p/w500${movie.backdropPath}',
            height: 300,
            width: double.infinity,
            fit: BoxFit.cover,
          )
          const SizedBox(
            height: 10,
          )
          Text(movie.overview),
          const SizedBox(
            height: 20,
          )
          Row(
            children: [
              const Icon(Icons.calendar_month, color: Colors.blue,),
              const SizedBox( width: 10,)
            ],
          )
        ],
      ));
  }
}