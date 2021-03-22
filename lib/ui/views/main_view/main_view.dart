import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../shared/const_color.dart';
import '../../shared/const_text_style.dart';
import '../local_list_view/local_list_view.dart';
import '../remote_list_view/remote_list_view.dart';
import 'main_viewmodel.dart';

class MainView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MainViewModel>.reactive(
      builder: (context, model, child) => WillPopScope(
        onWillPop: () async => model.onWillPop(model.currentIndex),
        child: Scaffold(
          body: PageTransitionSwitcher(
              duration: const Duration(milliseconds: 600),
              reverse: model.reverse,
              transitionBuilder: (
                Widget child,
                Animation<double> animation,
                Animation<double> secondaryAnimation,
              ) {
                return SharedAxisTransition(
                  child: child,
                  animation: animation,
                  secondaryAnimation: secondaryAnimation,
                  transitionType: SharedAxisTransitionType.vertical,
                );
              },
              child: getViewForIndex(model.currentIndex, model)),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: BrandColors.kPrimary,
            selectedItemColor: BrandColors.kSecondary,
            unselectedItemColor: ThemeColors.kBackground,
            selectedLabelStyle: kBodyTextStyle(context, color: ThemeColors.kWhite),
            unselectedLabelStyle: kBodyTextStyle(context, color: ThemeColors.kWhite),
            currentIndex: model.currentIndex,
            onTap: model.setIndex,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.work_off_outlined),
                label: 'Filter Offline',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.book_online),
                label: 'Filter Online',
              ),
            ],
          ),
        ),
      ),
      viewModelBuilder: () => MainViewModel(),
    );
  }

  Widget getViewForIndex(int index, MainViewModel model) {
    switch (index) {
      case 0:
        return LocalListView();
      case 1:
        return RemoteListView();
      default:
        return LocalListView();
    }
  }
}
