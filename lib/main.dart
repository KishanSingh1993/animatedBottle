import 'package:animated_bottle/pages/home.dart';
import 'package:animated_bottle/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppTheme(),
      child: Consumer<AppTheme>(
        builder: (context, theme, child) {
          return MaterialApp(
            title: 'Animated Dark',
            debugShowCheckedModeBanner: false,
            theme: theme.currentTheme,
            home: const HomePage(),
          );
        },
      ),
    );
  }
}
