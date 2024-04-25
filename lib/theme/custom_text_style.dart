import 'package:flutter/material.dart';
import 'package:souqna_app/theme/theme_helper.dart';
// import 'package:untitled8/core/utils/size_utils.dart';
// import 'package:untitled8/theme/theme_helper.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLarge18 => theme.textTheme.bodyLarge!.copyWith(
    fontSize: 18.0,
  );
  static get bodyLargeff5b5b5e => theme.textTheme.bodyLarge!.copyWith(
    color: Color(0XFF5B5B5E),
    fontSize: 16,
  );
  static get bodyLargeff6a1079 => theme.textTheme.bodyLarge!.copyWith(
    color: Color(0XFF6A1079),
    fontSize: 16,
  );
  static get bodyLargeOnErrorContainer => theme.textTheme.bodyLarge!.copyWith(
    color: theme.colorScheme.onErrorContainer.withOpacity(1),
    fontSize: 16,
  );
  static get bodyLargeInterOnPrimaryContainer =>
      theme.textTheme.bodyLarge!.inter.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );

  static get bodyMediumCairoGray700 =>
      theme.textTheme.bodyMedium!.cairo.copyWith(
        color: appTheme.gray700,
        fontSize: 15.0,
      );
  static get bodyMediumTajawalGray800 =>
      theme.textTheme.bodyMedium!.tajawal.copyWith(
        color: appTheme.gray800,
        fontSize: 15.0,
      );
  static get bodyMediumTajawalGray500 =>
      theme.textTheme.bodyMedium!.tajawal.copyWith(
        color: appTheme.gray500,
        fontSize: 15,
      );
  static get bodyMediumTajawalff5b5b5e =>
      theme.textTheme.bodyMedium!.tajawal.copyWith(
        color: Color(0XFF5B5B5E),
        fontSize: 15.0,
      );
  static get bodyMediumTajawalff6a1179 =>
      theme.textTheme.bodyMedium!.tajawal.copyWith(
        color: Color(0XFF6A1179),
        fontSize: 15.0,
      );
  static get bodyLargeNotoSansArabicOnErrorContainer =>
      theme.textTheme.bodyLarge!.notoSansArabic.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(0.66),
        fontSize: 18,
      );
  static get displayLargeNotoSansArabicffffffff =>
      theme.textTheme.displayLarge!.notoSansArabic.copyWith(
        color: Color(0XFFFFFFFF),
        fontSize: 53,
        fontWeight: FontWeight.w500,
      );
  static get displayLargeNotoSansArabicff560d63 =>
      theme.textTheme.displayLarge!.notoSansArabic.copyWith(
        color: Color(0XFF560D63),
        fontSize: 53,
        fontWeight: FontWeight.w700,
      );

  // Title text style
  static get labelLarge12 => theme.textTheme.labelLarge!.copyWith(
    fontSize: 12,
  );
  static get titleMediumTajawalGray400 =>
      theme.textTheme.titleMedium!.tajawal.copyWith(
        color: appTheme.gray400,
        fontSize: 17.0,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallTajawalOnErrorContainerMedium =>
      theme.textTheme.titleSmall!.tajawal.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontWeight: FontWeight.w500,
      );
  static get titleSmallTajawalOnErrorContainer =>
      theme.textTheme.titleSmall!.tajawal.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontWeight: FontWeight.w500,
      );

  static get titleSmallTajawalPrimary =>
      theme.textTheme.titleSmall!.tajawal.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
      );
  static get bodyMediumTajawalOnErrorContainer =>
      theme.textTheme.bodyMedium!.tajawal.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontSize: 15,
      );
  static get titleMediumTajawalOnErrorContainer =>
      theme.textTheme.titleMedium!.tajawal.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontWeight: FontWeight.w500,
      );
}

extension on TextStyle {
  TextStyle get tajawal {
    return copyWith(
      fontFamily: 'Tajawal',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get cairo {
    return copyWith(
      fontFamily: 'Cairo',
    );
  }
  TextStyle get notoSansArabic {
    return copyWith(
      fontFamily: 'Noto Sans Arabic',
    );
  }
  TextStyle get inika {
    return copyWith(
      fontFamily: 'Inika',
    );
  }
}