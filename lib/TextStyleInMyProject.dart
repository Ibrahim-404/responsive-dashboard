import "dart:ui";
import "package:flutter/material.dart";
const Color primaryColor = Color(0xFF064061);
const Color secondaryColor = Color(0xFF4EB7F2);
const Color thirdColor = Color(0xFFAAAAAA);
const Color fourthColor = Color(0xFFFFFFFF);
abstract class AppStyle {
  static TextStyle styleRegular16(BuildContext context) {
    return TextStyle(
      fontSize: responsiveFontSize(context, baseSize: 16),
      fontFamily: "Montserrat",
      fontWeight: FontWeight.w400,
      color: primaryColor,
    );
  }

  static TextStyle styleMedium16(BuildContext context) {
    return TextStyle(
      fontSize: responsiveFontSize(context, baseSize: 16),
      fontFamily: "Montserrat",
      fontWeight: FontWeight.w500,
      color: primaryColor,
    );
  }

  static TextStyle styleSemiBold16(BuildContext context) {
    return TextStyle(
      fontSize: responsiveFontSize(context, baseSize: 16),
      fontFamily: "Montserrat",
      fontWeight: FontWeight.w600,
      color: primaryColor,
    );
  }

  static TextStyle styleSemiBold20(BuildContext context) {
    return TextStyle(
      fontSize: responsiveFontSize(context, baseSize: 20),
      fontFamily: "Montserrat",
      fontWeight: FontWeight.w600,
      color: primaryColor,
    );
  }

  static TextStyle styleRegular12(BuildContext context) {
    return TextStyle(
      fontSize: responsiveFontSize(context, baseSize: 12),
      fontFamily: "Montserrat",
      fontWeight: FontWeight.w400,
      color: thirdColor,
    );
  }

  static TextStyle styleSemiBold24(BuildContext context) {
    return TextStyle(
      fontSize: responsiveFontSize(context, baseSize: 24),
      fontFamily: "Montserrat",
      fontWeight: FontWeight.w600,
      color: secondaryColor,
    );
  }

  static TextStyle styleRegular14(BuildContext context) {
    return TextStyle(
      fontSize: responsiveFontSize(context, baseSize: 14),
      fontFamily: "Montserrat",
      fontWeight: FontWeight.w400,
      color: thirdColor,
    );
  }

  static TextStyle styleSemiBold18(BuildContext context) {
    return TextStyle(
      fontSize: responsiveFontSize(context, baseSize: 18),
      fontFamily: "Montserrat",
      fontWeight: FontWeight.w600,
      color: fourthColor, // Fixed typo here
    );
  }

  static TextStyle styleBold18(BuildContext context) {
    return TextStyle(
      fontSize: responsiveFontSize(context, baseSize: 18),
      fontFamily: "Montserrat",
      fontWeight: FontWeight.w700,
      color: secondaryColor,
    );
  }

  static TextStyle styleMedium20(BuildContext context) {
    return TextStyle(
      fontSize: responsiveFontSize(context, baseSize: 20),
      fontFamily: "Montserrat",
      fontWeight: FontWeight.w500,
      color: fourthColor, // Fixed typo here
    );
  }
}

double responsiveFontSize(BuildContext context,{required double baseSize}) {
  double factor = getFontSizeFactor(context);
  double responsiveFont=baseSize * factor;
  double upperLimit=baseSize*1.2;
  double lowerLimit=baseSize*0.8;
  return responsiveFont.clamp(lowerLimit, upperLimit);
}

double getFontSizeFactor(context) {
  // var Dispatcher= PlatformDispatcher.instance;
  // var physicalWidth= Dispatcher.views.first.physicalSize.width;
  // var physicalAspect=Dispatcher.views.first.devicePixelRatio;
  // double width= physicalWidth/physicalAspect;
  double width = MediaQuery.of(context).size.width;
  if (width < 700) {
    return  width/650 ;
  }
  else if (width < 1200) {
    return width/1100;
  }
  else {
    return width/1700;
  }
}