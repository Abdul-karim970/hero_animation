import 'package:flutter/material.dart';
import 'package:hero_anim/navigation/rout_generator.dart';

import 'model_class/movie.dart';
import 'master_page.dart/movies_list_page.dart';

final moviesList = [
  Movie(
      title: 'The Time Machine',
      movieThumbnailPath: 'assets/images/ttmthumb.jpeg',
      moviePath: 'assets/images/ttm.jpeg'),
  Movie(
      title: 'Split',
      movieThumbnailPath: 'assets/images/splitThumb.jpeg',
      moviePath: 'assets/images/split.jpeg'),
  Movie(
      title: 'Sisu',
      movieThumbnailPath: 'assets/images/sisuthumb.jpeg',
      moviePath: 'assets/images/sisu.jpeg'),
  Movie(
      title: 'Pirates',
      movieThumbnailPath: 'assets/images/pocthumb.jpeg',
      moviePath: 'assets/images/poc.jpeg'),
  Movie(
      title: 'Prison Break',
      movieThumbnailPath: 'assets/images/pbthumb.jpeg',
      moviePath: 'assets/images/pb.jpeg'),
  Movie(
      title: 'Lost',
      movieThumbnailPath: 'assets/images/lostthumb.jpeg',
      moviePath: 'assets/images/lost.jpeg'),
  Movie(
      title: 'John Wick',
      movieThumbnailPath: 'assets/images/jwthumb.jpeg',
      moviePath: 'assets/images/jw.jpeg'),
  Movie(
      title: 'Good Bad Ugly',
      movieThumbnailPath: 'assets/images/gbuthumb.jpeg',
      moviePath: 'assets/images/gbu.jpeg'),
  Movie(
      title: 'Entrapment',
      movieThumbnailPath: 'assets/images/ethumb.jpeg',
      moviePath: 'assets/images/e.jpeg'),
  Movie(
      title: 'Captain America',
      movieThumbnailPath: 'assets/images/capthumb.jpeg',
      moviePath: 'assets/images/cap.jpeg'),
  Movie(
      title: 'Behind Enemy Lines',
      movieThumbnailPath: 'assets/images/belthumb.jpeg',
      moviePath: 'assets/images/bel.jpeg'),
  Movie(
      title: 'Breaking Bad',
      movieThumbnailPath: 'assets/images/bbthumb.jpeg',
      moviePath: 'assets/images/bb.jpeg'),
];

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: MoviesListPage.name,
      onGenerateRoute: onGenerateRout,
    );
  }
}
