import "package:flutter/material.dart";

const Color primaryColor = Color(0xFF064061);
const Color secondaryColor = Color(0xFF4EB7F2);
const Color thirdColor = Color(0xFFAAAAAA);
const Color fourstColor = Color(0xFFFFFFFF);
abstract class AppStyle {
  static const TextStyle styleRegular16 = TextStyle(
    fontSize: 16,
    fontFamily: "Montserrat",
    fontWeight: FontWeight.w400,
    color: primaryColor,
  );

  static const TextStyle styleMedium16 = TextStyle(
    fontSize: 16,
    fontFamily: "Montserrat",
    fontWeight: FontWeight.w500,
    color: primaryColor, 
  );
  static const TextStyle styleSemiBold16 = TextStyle(
    fontSize: 16,
    fontFamily: "Montserrat",
    fontWeight: FontWeight.w600,
    color: primaryColor,
  );
  static const TextStyle styleSemiBold20 = TextStyle(
    fontSize: 16,
    fontFamily: "Montserrat",
    fontWeight: FontWeight.w600,
    color: primaryColor,
  );
  static const TextStyle styleRegular12 = TextStyle(
    fontSize: 12,
    fontFamily: "Montserrat",
    fontWeight: FontWeight.w400,
    color: thirdColor,
  );
  static const TextStyle styleSemiBold24 = TextStyle(
    fontSize: 24,
    fontFamily: "Montserrat",
    fontWeight: FontWeight.w600,
    color: secondaryColor,
  );
  static const TextStyle styleRegular14 = TextStyle(
    fontSize: 14,
    fontFamily: "Montserrat",
    fontWeight: FontWeight.w400,
    color: thirdColor,
  );
 static const TextStyle styleSemiBold18 = TextStyle(
    fontSize: 18,
    fontFamily: "Montserrat",
    fontWeight: FontWeight.w600,
    color: fourstColor,
  );
   static const TextStyle styleBold18 = TextStyle(
    fontSize: 18,
    fontFamily: "Montserrat",
    fontWeight: FontWeight.w700,
    color: secondaryColor,
  );
   static const TextStyle styleMedium20 = TextStyle(
    fontSize: 20,
    fontFamily: "Montserrat",
    fontWeight: FontWeight.w500,
    color: fourstColor,
  );
}
