import 'package:flutter/material.dart';
import 'package:xapp1/project/widgets/custom_date_time_picker.dart';
import 'package:xapp1/project/widgets/custom_modal_action_button.dart';
// import 'package:trail2/project/widgets/custom_textfield.dart';
import 'package:xapp1/project/widgets/custom_textfield.dart';

class AddMyProjectPage extends StatefulWidget {
  @override
  _AddMyProjectPageState createState() => _AddMyProjectPageState();
}

class _AddMyProjectPageState extends State<AddMyProjectPage> {
  String _selectedDate = 'Pick date';
  String _selectedTime = 'Pick time';

  Future _pickDate() async {
    DateTime datepick = await showDatePicker(
        context: context,
        initialDate: new DateTime.now(),
        firstDate: new DateTime.now().add(Duration(days: -365)),
        lastDate: new DateTime.now().add(Duration(days: 365)));
    if (datepick != null)
      setState(() {
        _selectedDate = datepick.toString();
      });
  }

  Future _pickTime() async {
    TimeOfDay timepick = await showTimePicker(
        context: context, initialTime: new TimeOfDay.now());
    if (timepick != null) {
      setState(() {
        _selectedTime = timepick.toString();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Center(
              child: Text(
                "Add new project",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              )),
          SizedBox(
            height: 24,
          ),
          CustomTextField(labelText: 'Enter Project name'),
          SizedBox(height: 12),
          CustomTextField(labelText: 'Enter description'),
          SizedBox(height: 12),
          CustomDateTimePicker(
            icon: Icons.date_range,
            onPressed: _pickDate,
            value: _selectedDate,
          ),
          CustomDateTimePicker(
            icon: Icons.access_time,
            onPressed: _pickTime,
            value: _selectedTime,
          ),
          SizedBox(
            height: 24,
          ),
          CustomModalActionButton(
            onClose: () {
              Navigator.of(context).pop();
            },
            onSave: () {},
          )
        ],
      ),
    );
  }
}