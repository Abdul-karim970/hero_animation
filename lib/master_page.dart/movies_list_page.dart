import 'package:flutter/material.dart';

import 'movies_list_builder.dart';
import 'movies_name_expanded_widget.dart';

class MoviesListPage extends StatefulWidget {
  const MoviesListPage({
    super.key,
  });
  static const name = '/';
  @override
  State<MoviesListPage> createState() => _MoviesListPageState();
}

class _MoviesListPageState extends State<MoviesListPage> {
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
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(235, 255, 255, 255),
        body: SingleChildScrollView(
          clipBehavior: Clip.none,
          child: Align(
            alignment: Alignment.topCenter,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: screenHeight * 0.07,
                ),
                const MoviesNameExpandedWidget(),
                SizedBox(
                  height: screenHeight * 0.05,
                ),
                Container(
                    width: screenWidth * 0.9,
                    height: screenHeight * 0.9,
                    decoration: BoxDecoration(
                        color: Colors.blueGrey.shade100,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black38,
                            blurRadius: 10,
                          )
                        ]),
                    child: const MoviesBuilder()),
                SizedBox(
                  height: screenHeight * 0.1,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
