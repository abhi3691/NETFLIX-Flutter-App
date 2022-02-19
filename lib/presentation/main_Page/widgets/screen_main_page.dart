import 'package:app/core/colors/colors.dart';
import 'package:app/presentation/downloads/screen_downloads.dart';
import 'package:app/presentation/fast_laugh/screen_fastLaugh.dart';
import 'package:app/presentation/home/screen_home.dart';
import 'package:app/presentation/main_Page/widgets/bottom_nav.dart';
import 'package:app/presentation/new_and_hot/screen_new_and_hot.dart';
import 'package:app/presentation/search/screen_search.dart';
import 'package:flutter/material.dart';

class ScreenMainPage extends StatelessWidget {
  ScreenMainPage({Key? key}) : super(key: key);

  final _pages = [
    ScreenHome(),
    ScreenNewAndHot(),
    ScreenFastLaugh(),
    ScreenSearch(),
    ScreenDownloads()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: indexChangeNotifier,
          builder: (context, int index, _) {
            return _pages[index];
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationWidget(),
    );
  }
}
