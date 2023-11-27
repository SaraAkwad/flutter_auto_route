import 'package:flutter/material.dart';
import 'package:flutter_auto_route/router/app_router.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {            
            

  const App({super.key});            

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final _appRouter = AppRouter();

  @override            
  Widget build(BuildContext context){            
    return MaterialApp.router(            
      routerConfig: _appRouter.config(),         
    );            
  }            
}