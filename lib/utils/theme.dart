import 'package:flutter/material.dart';
import 'package:monumental_habits_app/utils/config.dart';

Color kPrimaryColor = const Color(0xffFC9D45);
Color kSecondaryColor = const Color(0xff573353);
Color kBackgroundColor = const Color(0xffFFF3E9);

final kTitle = TextStyle(
  fontFamily: 'Klasik',
  fontSize: SizeConfig.blockSizeH! * 7,
  color: kSecondaryColor,
);

final kTitle2 = TextStyle(
  fontFamily: 'Klasik',
  fontSize: SizeConfig.blockSizeH! * 6,
  color: kSecondaryColor,
);

final kBodyText1 = TextStyle(
  color: kSecondaryColor,
  fontSize: SizeConfig.blockSizeH! * 4,
  fontWeight: FontWeight.bold,
  height: SizeConfig.blockSizeH! * 0.3,
);

final kBodyText2 = TextStyle(
  color: kSecondaryColor,
  fontSize: SizeConfig.blockSizeH! * 3.8,
  fontWeight: FontWeight.bold,
);

final kBodyText3 = TextStyle(
  color: kSecondaryColor,
  fontSize: SizeConfig.blockSizeH! * 3.5,
  fontWeight: FontWeight.w500,
);

final kInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(12),
  borderSide: BorderSide.none,
);

final kInputHintStyle = kBodyText2.copyWith(
  fontWeight: FontWeight.w500,
  color: kSecondaryColor.withOpacity(0.5),
);
