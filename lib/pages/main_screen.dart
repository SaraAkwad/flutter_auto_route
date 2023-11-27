import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auto_route/router/app_router.gr.dart';

@RoutePage()
class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(      
      routes: const [      
        HomeRoute(),      
        ProfileRoute(),      
      ],      
      bottomNavigationBuilder: (_, tabsRouter) {      
        return BottomNavigationBar(      
          currentIndex: tabsRouter.activeIndex,      
          onTap: tabsRouter.setActiveIndex,      
          items: const [      
            BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),      
            BottomNavigationBarItem(label: 'Profile', icon: Icon(Icons.person)),      
          ],      
        );      
      },      
    );
  }
}