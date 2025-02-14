import 'package:first/LoginPage.dart';
import 'package:first/app.dart';
import 'package:first/settingscreen.dart';
import 'package:flutter/material.dart';
import 'package:first/SupabaseServices.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized(); // Ensure async operations are allowed before runApp
  await SupabaseService().initialize();

  runApp(MaterialApp(home: App()));
}
