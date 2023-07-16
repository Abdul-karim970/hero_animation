import 'package:flutter/cupertino.dart';
import 'package:hero_anim/master_page.dart/movies_list_page.dart';

import '../about_page/movies_about_page.dart';

Route<dynamic>? onGenerateRout(RouteSettings settings) {
  switch (settings.name) {
    case MoviesListPage.name:
      return CupertinoPageRoute(
          builder: movieListPageBuilder, settings: settings);
    case MovieAboutPage.name:
      return CupertinoPageRoute(
          builder: movieAboutPageBuilder, settings: settings);
  }
}

Widget movieListPageBuilder(BuildContext context) {
  return MoviesListPage();
}

Widget movieAboutPageBuilder(BuildContext context) {
  return MovieAboutPage();
}
