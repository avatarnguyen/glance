import 'package:flutter/material.dart';

// Sizes
const kSizeTimeWidth = 40.0;
const kSizeDrawerItemHeight = 50.0;

// Screen Size Helpers
double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;
double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;

/// Returns the pixel amount for the percentage of the screen height. [percentage] should
/// be between 0 and 1 where 0 is 0% and 100 is 100% of the screens height
double screenHeightPercentage(BuildContext context, {double percentage = 1}) => screenHeight(context) * percentage;

/// Returns the pixel amount for the percentage of the screen width. [percentage] should
/// be between 0 and 1 where 0 is 0% and 100 is 100% of the screens width
double screenWidthPercentage(BuildContext context, {double percentage = 1}) => screenWidth(context) * percentage;

// Widget
const Widget kProgressIndicator = SizedBox(
  height: 40,
  width: 40,
  child: CircularProgressIndicator.adaptive(),
);
