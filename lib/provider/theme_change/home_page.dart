import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'theme_provider.dart';

class ThemeChange extends StatelessWidget {
  const ThemeChange({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = context.watch<ThemeProvider>();

    return Scaffold(
      appBar: AppBar(
        title: Text("Theme Change"),backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Switch(value: themeProvider.islight, onChanged: (_){
          context.read<ThemeProvider>().toogleTheme();
        },
        ),
      ),
    );
  }
}
