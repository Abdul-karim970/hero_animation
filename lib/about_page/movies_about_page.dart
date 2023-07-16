import 'package:flutter/material.dart';

import '../model_class/movie.dart';

class MovieAboutPage extends StatefulWidget {
  const MovieAboutPage({super.key});
  static const name = 'MovieAbout';
  @override
  State<MovieAboutPage> createState() => _MovieAboutPageState();
}

class _MovieAboutPageState extends State<MovieAboutPage> {
  late Size screenSize;
  late double screenWidth;
  late double screenHeight;
  late double screenArea;
  @override
  void didChangeDependencies() {
    // Finding Screen Size
    screenSize = MediaQuery.sizeOf(context);
    screenWidth = screenSize.width;
    screenHeight = screenSize.height;

    screenArea = screenWidth * screenHeight;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    Movie movie = ModalRoute.of(context)!.settings.arguments as Movie;

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(235, 255, 255, 255),
        body: Align(
          alignment: Alignment.topCenter,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                Center(
                  child: Container(
                    width: screenWidth * 0.95,
                    height: screenHeight * 0.4,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black38,
                            blurRadius: 10,
                          )
                        ],
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(movie.moviePath))),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.07,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(width: screenWidth * 0.07),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: screenHeight * 0.005,
                        ),
                        Text(
                          movie.title,
                          style: TextStyle(
                              fontSize: screenWidth * 0.02,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: screenHeight * 0.002,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            SizedBox(
                              width: screenWidth * 0.003,
                            ),
                            Text(
                              '8.8',
                              style: TextStyle(
                                  fontSize: screenWidth * 0.015,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: screenHeight * 0.004,
                        ),
                        SizedBox(
                          width: screenWidth * 0.5,
                          height: screenHeight * 0.18,
                          child: const Text(
                              '''In the world of Hollywood movies, creativity and entertainment know no bounds.'''),
                        )
                      ],
                    ),
                    SizedBox(width: screenWidth * 0.07),
                    Hero(
                      placeholderBuilder: (context, heroSize, child) {
                        return Opacity(opacity: 0.1, child: child);
                      },
                      flightShuttleBuilder: (flightContext, animation,
                          flightDirection, fromHeroContext, toHeroContext) {
                        return ScaleTransition(
                            scale: animation.drive(Tween(begin: 1, end: 0.5)),
                            child: fromHeroContext.widget);
                      },
                      tag: movie.title,
                      child: Container(
                        width: screenWidth * 0.2,
                        height: screenHeight * 0.35,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black38,
                                blurRadius: 10,
                              )
                            ],
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(movie.movieThumbnailPath))),
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(
                      screenWidth * 0.04,
                      screenHeight * 0.07,
                      screenWidth * 0.02,
                      screenHeight * 0.07),
                  width: screenWidth * 0.82,
                  child: const Text(
                      style: TextStyle(fontSize: 16),
                      '''In the world of Hollywood movies, creativity and entertainment know no bounds. From action-packed blockbusters to heartwarming romances and gripping thrillers, there's something for everyone. In the world of Hollywood movies, creativity and entertainment know no bounds. From action-packed blockbusters to heartwarming romances and gripping thrillers, there's something for everyone. In the world of Hollywood movies, creativity and entertainment know no bounds.\nFrom action-packed blockbusters to heartwarming romances and gripping thrillers, there's something for everyone. In the world of Hollywood movies, creativity and entertainment know no bounds. From action-packed blockbusters to heartwarming romances and gripping thrillers, there's something for everyone. In the world of Hollywood movies, creativity and entertainment know no bounds.]From action-packed blockbusters to heartwarming romances and gripping thrillers, there's something for everyone.'''),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
