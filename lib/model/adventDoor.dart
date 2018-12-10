import 'package:meta/meta.dart';

@immutable
class AdventDoor {
  final int number;
  final String image;
  final String title;

  const AdventDoor({
    @required this.number,
    @required this.image,
    @required this.title,
  });
}
