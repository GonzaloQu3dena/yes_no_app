import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/chat/providers/chat_provider.dart';
import 'package:yes_no_app/config/theme/app_theme.dart';
import 'package:yes_no_app/chat/screens/chat_screen.dart';

/// Main entry point of the app
///
/// This is the main entry point of the app. It is a stateless widget that
void main() => runApp(const MyApp());

/// MyApp class
///
/// This is the main class of the app. It is a stateless widget that
///
/// Gonzalo Quedena
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ChatProvider(),
        )
      ],
      child: MaterialApp(
        title: 'Yes No App',
        debugShowCheckedModeBanner: false,
        theme: AppTheme(
          selectedColor: 6,
        ).theme(),
        home: const ChatScreen(),
      ),
    );
  }
}
