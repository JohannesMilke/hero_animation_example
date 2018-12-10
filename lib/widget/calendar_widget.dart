import 'package:advent10_hero_animation/data/data.dart';
import 'package:advent10_hero_animation/model/adventDoor.dart';
import 'package:advent10_hero_animation/page/selected_door_page.dart';
import 'package:advent10_hero_animation/widget/calendar_door_widget.dart';
import 'package:flutter/material.dart';

class CalendarWidget extends StatelessWidget {
  static const int doors = 24;

  @override
  Widget build(BuildContext context) => GridView.builder(
      padding: EdgeInsets.all(8.0),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: 32.0,
        mainAxisSpacing: 16.0,
      ),
      itemCount: doors,
      itemBuilder: (BuildContext context, int index) {
        final int doorNumber = index + 1;

        final AdventDoor adventDoor = adventDoors[index];
        final Widget calendarDoor = CalendarDoorWidget(
          child: Image.asset('images/advent9.png', fit: BoxFit.fill),
          outerDoor: buildOuterDoor(context, number: doorNumber),
          innerDoor: buildInnerDoor(context),
        );

        return Hero(
          tag: adventDoor.title,
          child: GestureDetector(
            child: calendarDoor,
            onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => SelectedDoorPage(
                          door: adventDoor,
                        ),
                  ),
                ),
          ),
        );
      });

  Widget buildOuterDoor(BuildContext context, {int number}) => Container(
        color: Colors.red,
        child: Center(
            child: Text('$number',
                style: Theme.of(context)
                    .textTheme
                    .headline
                    .copyWith(color: Colors.white))),
      );

  Widget buildInnerDoor(BuildContext context) => Container(
        color: Colors.green[700],
      );
}
