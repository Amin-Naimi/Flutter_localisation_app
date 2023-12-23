import 'package:flutter/material.dart';

import 'app_localizations.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text ("home".translate(context))
      ),
      drawer: const Drawer(),
      body:  Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
/********************************************************************************************/ 
               AppLocalizations.of(context)!.translate("hello_msg"),
               //ou
               //"hello_msg".translate(context),
/********************************************************************************************/               
                style: const TextStyle(fontSize: 25),
                textAlign: TextAlign.center,
              ),
              const Text(
                "This text will not be translated !",
                style: TextStyle(fontSize: 25),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        child:  Icon(Icons.add) ,
      ),
    );
  }
}
