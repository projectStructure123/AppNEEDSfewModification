import 'package:flutter/material.dart';
import 'package:souqna_app/theme/theme_helper.dart';

class AppDecoration {
  // Fill decorations

  static BoxDecoration get outlineBluegray1001 => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray100.withOpacity(0.25),
            spreadRadius: 2,
            blurRadius: 2,
            offset: Offset(
              18.21,
              18.21,
            ),
          ),
        ],
      );
}

class BorderRadiusStyle {


  // Rounded borders

  static BorderRadius get roundedBorder20 => BorderRadius.circular(
        20,
      );

}
