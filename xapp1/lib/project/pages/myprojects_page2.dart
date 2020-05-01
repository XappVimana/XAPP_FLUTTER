import 'package:flutter/material.dart';
import 'package:xapp1/project/widgets/custom_icon_decoration.dart';

class MyProjectPage2 extends StatefulWidget {
  @override
  _MyProjectPage2State createState() => _MyProjectPage2State();
}

class Event {
  final String task;
  final String desc;
  final bool isFinish;

  const Event( this.task, this.desc, this.isFinish);
}

final List<Event> _eventList = [
  new Event( "Project Vimana", "s a body in an organization that works across business units (BUs) or product lines within a BU and has a leading-edge knowledge and competency in that area.", true),
  new Event( "Gesture Control Drone", "s a body in an organization that works across business units (BUs) or product lines within a BU and has a leading-edge knowledge and competency in that area.", true),
  new Event( "High Altitude Baloon", "s a body in an organization that works across business units (BUs) or product lines within a BU and has a leading-edge knowledge and competency in that area.", false),
  new Event( "X application", "s a body in an organization that works across business units (BUs) or product lines within a BU and has a leading-edge knowledge and competency in that area.", false),
  
];

class _MyProjectPage2State extends State<MyProjectPage2> {
  @override
  Widget build(BuildContext context) {
    double iconSize = 20;

    return ListView.builder(
      itemCount: _eventList.length,
      padding: const EdgeInsets.all(0),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(left: 24.0, right: 24),
          child: Row(
            children: <Widget>[
              _lineStyle(context, iconSize, index, _eventList.length,
                  _eventList[index].isFinish),
              _displayContent(_eventList[index])
            ],
          ),
        );
      },
    );
  }

  Widget _displayContent(Event event) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top: 12.0, bottom: 12.0),
        child: Container(
          padding: const EdgeInsets.all(14.0),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(12)),
              boxShadow: [
                BoxShadow(
                    color: Color(0x20000000),
                    blurRadius: 5,
                    offset: Offset(0, 3))
              ]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(event.task),
              SizedBox(
                height: 12,
              ),
              Text(event.desc)
            ],
          ),
        ),
      ),
    );
  }

  Widget _displayTime(String time) {
    return Container(
        width: 80,
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(time),
        ));
  }

  Widget _lineStyle(BuildContext context, double iconSize, int index,
      int listLength, bool isFinish) {
    return Container(
        decoration: CustomIconDecoration(
            iconSize: iconSize,
            lineWidth: 1,
            firstData: index == 0 ?? true,
            lastData: index == listLength - 1 ?? true),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(50)),
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 3),
                    color: Color(0x20000000),
                    blurRadius: 5)
              ]),
          child: Icon(
              isFinish
                  ? Icons.fiber_manual_record
                  : Icons.radio_button_unchecked,
              size: iconSize,
              color: Theme.of(context).accentColor),
        ));
  }
}