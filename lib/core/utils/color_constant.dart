import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color black9007f = fromHex('#7f000000');

  static Color whiteA7007f = fromHex('#7ffefefe');

  static Color whiteA7003f = fromHex('#3fffffff');

  static Color black9009e = fromHex('#9e080808');

  static Color red300 = fromHex('#ff6e6e');

  static Color whiteA70070 = fromHex('#70ffffff');

  static Color deepPurple200 = fromHex('#aea2dd');

  static Color black90087 = fromHex('#87000000');

  static Color whiteA70099 = fromHex('#99ffffff');

  static Color greenA700 = fromHex('#00b649');

  static Color deepPurpleA100Cc = fromHex('#ccb29dff');

  static Color black900 = fromHex('#000000');

  static Color gray50001 = fromHex('#979797');

  static Color gray50003 = fromHex('#939393');

  static Color gray50002 = fromHex('#a6a1a1');

  static Color deepPurpleA200 = fromHex('#8165ea');

  static Color gray600 = fromHex('#808080');

  static Color gray700 = fromHex('#5f5f5f');

  static Color gray400 = fromHex('#afafaf');

  static Color gray60002 = fromHex('#7b7b7b');

  static Color blueGray100 = fromHex('#cdcdcd');

  static Color gray500 = fromHex('#9e9e9e');

  static Color gray60001 = fromHex('#757575');

  static Color blueGray400 = fromHex('#8d8d8d');

  static Color indigo50 = fromHex('#e0d8ff');

  static Color gray900 = fromHex('#1a1a1a');

  static Color deepPurpleA200F2 = fromHex('#f28164ea');

  static Color gray100 = fromHex('#f3f3f3');

  static Color deepPurple50 = fromHex('#ede9ff');

  static Color whiteA70000 = fromHex('#00ffffff');

  static Color gray40001 = fromHex('#c3c3c3');

  static Color whiteA70001 = fromHex('#fefefe');

  static Color gray10001 = fromHex('#f5f2ff');

  static Color black90019 = fromHex('#19000000');

  static Color gray40000 = fromHex('#00c4c4c4');

  static Color deepPurpleA200F201 = fromHex('#f28165ea');

  static Color black900Ad = fromHex('#ad000000');

  static Color blueGray40001 = fromHex('#888888');

  static Color whiteA700 = fromHex('#ffffff');

  static Color deepPurpleA20033 = fromHex('#338165ea');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
