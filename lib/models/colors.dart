//palette.dart
import 'package:flutter/material.dart'; 
class Palette { 
  static const MaterialColor kToDark = const MaterialColor( 
    0xffffffff, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch. 
    const <int, Color>{ 
      0: const Color(0xffD5F1FF),
      10: const Color(0xff9DDAF7),
      50: const Color(0xff9DDAF7),//10% 
      100: const Color(0xffFFDB60),//20% 
      200: const Color(0xffFFD235),//30% 
      300: const Color(0xffD2B655),//40% 
      400: const Color(0xff45B6ED),//50% 
      500: const Color(0xff45B6ED),//60% 
      600: const Color(0xffC4910A),//70% 
      700: const Color(0xff0792D6),//80% 
      800: const Color(0xff0792D6),//90% 
      900: const Color(0xff000000),//100% 
    }, 
  ); 
} 