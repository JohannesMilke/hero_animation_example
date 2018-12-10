import 'package:advent10_hero_animation/model/adventDoor.dart';
import 'package:flutter/material.dart';

class SelectedDoorPage extends StatelessWidget {
  final AdventDoor door;

  const SelectedDoorPage({
    @required this.door,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(door.title),
        ),
        body: Center(
          child: Hero(
            tag: door.title,
            child: Image.asset(door.image, fit: BoxFit.fill),
          ),
        ),
      );
}
