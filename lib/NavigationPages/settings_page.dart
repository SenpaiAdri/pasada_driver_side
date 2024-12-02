import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.15, // 5% of screen height
          left: MediaQuery.of(context).size.width * 0.05,
          right: MediaQuery.of(context).size.width * 0.05, // 5% of screen width
        ),
        child: const Column(children: [
          SettingsButtons('Notification'),
          SizedBox(height: 20),
          RouteSuggestionToggleButton('Alternative Route Suggestion'),
          SizedBox(height: 20),
          SettingsButtons('Preference'),
          SizedBox(height: 20),
          SettingsButtons('Support'),
          SizedBox(height: 20),
        ]),
      ),
    );
  }
}

class SettingsButtons extends StatelessWidget {
  final String buttonName;
  const SettingsButtons(this.buttonName, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFF5F3FC4),
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(30.0),
      ),
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.only(left: 20),
      child: Text(
        buttonName,
        style: const TextStyle(
          fontFamily: 'Inter',
          fontSize: 15,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

class RouteSuggestionToggleButton extends StatefulWidget {
  const RouteSuggestionToggleButton(this.buttonName, {super.key});
  final String buttonName;

  @override
  State<RouteSuggestionToggleButton> createState() =>
      _RouteSuggestionToggleButtonState();
}

class _RouteSuggestionToggleButtonState
    extends State<RouteSuggestionToggleButton> {
  bool active = true;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0xFF5F3FC4),
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(30.0),
        ),
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.only(left: 20, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.buttonName,
              style: const TextStyle(
                fontFamily: 'Inter',
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
            Switch(
                value: active,
                activeColor: const Color(0xFF5F3FC4),
                onChanged: (bool value) {
                  setState(() {
                    active = value;
                  });
                }),
          ],
        ));
  }
}
