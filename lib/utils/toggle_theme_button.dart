import 'package:flutter/material.dart';
import '../theme/theme_provider.dart';
import 'package:provider/provider.dart';

class ToogleThemeButton extends StatefulWidget {
  const ToogleThemeButton({super.key});

  @override
  State<ToogleThemeButton> createState() => ToogleThemeButtonState();
}

class ToogleThemeButtonState extends State<ToogleThemeButton> {
  bool _selections = true;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
        setState(() {
          _selections = !_selections;
        });
        print(_selections);
      },
      icon: _selections
          ? Icon(Icons.dark_mode_rounded)
          : Icon(Icons.light_mode_rounded),
    );
  }
}
