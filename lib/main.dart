import 'package:flutter/material.dart';
import 'package:si_no_app/config/theme/app_theme.dart';
import 'package:si_no_app/presentation/screens/chat/chat_screen.dart';

  void main() {
    runApp(const   MyApp());
  }


  class MyApp extends StatelessWidget{
    const MyApp({super.key});



    @override
    Widget build(BuildContext context){ 
      return MaterialApp(

        title: 'Si No App',

        debugShowCheckedModeBanner: false,
        theme: AppTheme(selectedColor:1) .theme(),
        /*home: Scaffold(
          appBar: AppBar(title: const Text('Material App Bar'),
          ),
          body: Center(child: FilledButton.tonal(onPressed: (){}
          , child: const Text('Click me'))),
        ),*/

        home: const ChatScreen(),
      );

  }
}