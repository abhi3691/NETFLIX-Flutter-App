import 'package:app/core/colors/colors.dart';
import 'package:app/presentation/main_Page/widgets/bottom_nav.dart';
import 'package:flutter/material.dart';

class ScreenMainPage extends StatelessWidget {
  const ScreenMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: SafeArea(
          child: Text(
            'Main Page',
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationWidget(),
    );
  }
}
