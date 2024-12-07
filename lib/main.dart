// main.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/registration_form.dart';
import 'package:flutter_application_1/appbarr.dart';
import 'package:flutter_application_1/containers.dart';
import 'package:flutter_application_1/text.dart';
import 'package:flutter_application_1/coloum.dart';
import 'package:flutter_application_1/row.dart';
import 'package:flutter_application_1/button.dart';
import 'package:flutter_application_1/icon.dart';
import 'package:flutter_application_1/image.dart';
import 'package:flutter_application_1/circleavatar.dart';
import 'package:flutter_application_1/column.dart';
import 'package:flutter_application_1/rrow.dart';
import 'package:flutter_application_1/listview.dart';
import 'package:flutter_application_1/gridview.dart';
import 'package:flutter_application_1/padding.dart';
import 'package:flutter_application_1/aspectratio.dart';
import 'package:flutter_application_1/center.dart';
import 'package:flutter_application_1/expanded.dart';
import 'package:flutter_application_1/sizedbox.dart';
import 'package:flutter_application_1/wrap.dart';
import 'package:flutter_application_1/stack.dart';
import 'package:flutter_application_1/navigator_push1.dart';
import 'package:flutter_application_1/navigator_pop2.dart';
import 'package:flutter_application_1/buttonnavigation_bar3.dart';
import 'package:flutter_application_1/tab_bar4.dart';
import 'package:flutter_application_1/drawer5.dart';
import 'package:flutter_application_1/sliwerapp_bar6.dart';
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:SilverbarMyWidget(),
    );
  }
}

