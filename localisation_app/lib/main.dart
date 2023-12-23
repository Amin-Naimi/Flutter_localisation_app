import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'app_localizations.dart';
import 'home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      supportedLocales: const [
        Locale('en', 'US'),
        Locale('ar'),
      ],
      localizationsDelegates: const [
        // Direction des widgets
        GlobalMaterialLocalizations
            .delegate, // Translate some Text in specific widget
        GlobalWidgetsLocalizations.delegate, // Widgets direction left , right
        GlobalCupertinoLocalizations
            .delegate, // Translate some Text in specific widget
            AppLocalizations.delegate
      ],
      localeResolutionCallback: (deviceLocaleLangage, supportedLocales) {
        for(var locale in supportedLocales) {
          if(deviceLocaleLangage !=null && deviceLocaleLangage.languageCode == locale.languageCode){
              return deviceLocaleLangage;
          }
        }
        return supportedLocales.first;
      },
      home: const HomePage(),
    );
  }
}
