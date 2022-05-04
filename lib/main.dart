import 'package:flutter/material.dart';
import 'package:huro/provider/dark_theme_provider.dart';
import 'package:huro/widget/bottom_bar.dart';
import 'package:provider/provider.dart';
import 'package:huro/const/theme_data.dart';
import 'package:huro/screens/post/post_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  DarkThemeProvider themeChangeProvider = DarkThemeProvider();

void getCurrentAppTheme() async {
  themeChangeProvider.darkTheme = await themeChangeProvider.darkThemePreferences.getTheme();
}
  @override
    void initState(){
      getCurrentAppTheme();
      super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) {
        return themeChangeProvider;
      })
    ],
    child: Consumer<DarkThemeProvider>(
        builder: (context, themeData, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: Styles.themeData(themeChangeProvider.darkTheme, context),
            home: BottomBarScreen(),
          );
        }
      )
    );
  }
}

