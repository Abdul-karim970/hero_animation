import 'package:flutter/material.dart';

import '../main.dart';
import '../model_class/movie.dart';
import '../about_page/movies_about_page.dart';

class MoviesBuilder extends StatefulWidget {
  const MoviesBuilder({super.key});

  @override
  State<MoviesBuilder> createState() => _MoviesBuilderState();
}

class _MoviesBuilderState extends State<MoviesBuilder>
    with SingleTickerProviderStateMixin {
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
    return GridView.builder(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.fromLTRB(screenWidth * 0.04, screenHeight * 0.06,
            screenWidth * 0.04, screenHeight * 0.04),
        itemCount: moviesList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: screenHeight * 0.4,
            crossAxisSpacing: screenWidth * 0.03,
            mainAxisSpacing: screenHeight * 0.04,
            crossAxisCount: 3),
        itemBuilder: movieItemBuilder);
  }
}

Widget? movieItemBuilder(BuildContext context, int index) {
  return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(MovieAboutPage.name,
            arguments: Movie(
                title: moviesList[index].title,
                movieThumbnailPath: moviesList[index].movieThumbnailPath,
                moviePath: moviesList[index].moviePath));
      },
      child: Hero(
          placeholderBuilder: (context, heroSize, child) {
            return Opacity(opacity: 0.2, child: child);
          },
          transitionOnUserGestures: true,
          flightShuttleBuilder: (flightContext, animation, flightDirection,
              fromHeroContext, toHeroContext) {
            return ScaleTransition(
              scale: animation.drive(Tween(begin: 1, end: 0.5)),
              child: fromHeroContext.widget,
            );
          },
          tag: moviesList[index].title,
          child: MoviesItemBuilder(index: index)));
}

class MoviesItemBuilder extends StatelessWidget {
  const MoviesItemBuilder({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    final screenWidth = size.width;
    final screenHeight = size.height;
    return Container(
      width: screenWidth * 0.75,
      height: screenHeight * 0.07,
      clipBehavior: Clip.none,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
                color: Colors.black38, blurRadius: 5, offset: Offset(-2, 2))
          ],
          image: DecorationImage(
              filterQuality: FilterQuality.high,
              fit: BoxFit.fill,
              image: AssetImage(moviesList[index].movieThumbnailPath))),
    );
  }
}
