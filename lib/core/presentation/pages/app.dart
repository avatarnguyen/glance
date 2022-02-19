import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:glance/core/presentation/pages/home_page.dart';
import 'package:glance/core/styles/styles.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return AppTheme(
      data: AppThemeData.regular(
        appLogo: ExactAssetPicture(
          SvgPicture.svgStringDecoderBuilder,
          'assets/images/logo.svg',
        ),
      ),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePage(),
      ),
    );
  }
}
