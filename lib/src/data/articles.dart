import 'package:cv_website/src/data/skills.dart';
import 'package:cv_website/src/models/article.dart';
import 'package:media_source/media_source.dart';

class Articles {
  static final values = [
    // Example Placeholder
    Article(
      title: 'App Flavoring in Flutter',
      description: 'Integrate custom scheme for iOS platform apps',
      url: UrlMedia.url(
          'https://medium.com/@prashannagc11/app-flavoring-in-flutter-integrate-custom-scheme-for-ios-platform-apps-6ed49ea0b8af'),
      skills: [Skills.flutter, Skills.dart],
    ),

    Article(
      title: 'Dart variables',
      description: 'Differences between dynamic, var, final and const.',
      url: UrlMedia.url(
          'https://medium.com/@prashannagc11/1-types-of-dart-variables-6c7228baf36c'),
      skills: [Skills.flutter, Skills.dart],
    ),

    Article(
      title: 'Dart Built-in Types',
      description: 'Num, Int, Double, String, List, Set, Map & Runes',
      url: UrlMedia.url(
          'https://medium.com/@prashannagc11/dart-built-in-types-num-int-double-string-list-set-map-runes-ea5d138998c7'),
      skills: [Skills.flutter, Skills.dart],
    ),
  ];
}
