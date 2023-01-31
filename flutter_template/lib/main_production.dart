import 'package:flutter/material.dart';
import 'package:flutter_template/app.dart';
import 'package:flutter_template/flavors.dart';

void main() async {
  F.appFlavor = Flavor.production;
  runApp(
    const App(flavor: 'Production')
  );
}