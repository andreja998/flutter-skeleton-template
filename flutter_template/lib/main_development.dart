import 'package:flutter/material.dart';
import 'package:flutter_template/app.dart';
import 'package:flutter_template/flavors.dart';

void main() async {
  F.appFlavor = Flavor.development;
  runApp(
    const App(flavor: 'Dsvelopment')
  );
}