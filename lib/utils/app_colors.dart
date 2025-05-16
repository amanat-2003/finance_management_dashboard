import 'package:flutter/material.dart'
    show immutable, Color, ColorScheme, Brightness;

extension RemoveAll on String {
  String removeAll(Iterable<String> values) => values.fold(
      this,
      (
        String result,
        String pattern,
      ) =>
          result.replaceAll(pattern, ''));
}

@immutable
class AppColors {
  static final lightColorScheme = ColorScheme.fromSeed(
    seedColor: AppColors.lightSeedColor,
    brightness: Brightness.light,
  );

  static final darkColorScheme = ColorScheme.fromSeed(
    seedColor: AppColors.darkSeedColor,
    brightness: Brightness.dark,
  );

  static final lightSeedColor = Color(
    int.parse(
      '#377df6'.removeAll(['0x', '#']).padLeft(8, 'ff'),
      radix: 16,
    ),
  );
  static final darkSeedColor = Color(
    int.parse(
      '#377df6'.removeAll(['0x', '#']).padLeft(8, 'ff'),
      radix: 16,
    ),
  );

  static final primaryLightMode = Color(int.parse('4278213063'));
  static final onPrimaryLightMode = Color(int.parse('4294967295'));
  static final primaryContainerLightMode = Color(int.parse('4292469503'));
  static final onPrimaryContainerLightMode = Color(int.parse('4278196547'));
  static final secondaryLightMode = Color(int.parse('4283915889'));
  static final onSecondaryLightMode = Color(int.parse('4294967295'));
  static final secondaryContainerLightMode = Color(int.parse('4292600569'));
  static final onSecondaryContainerLightMode = Color(int.parse('4279507756'));
  static final tertiaryLightMode = Color(int.parse('4285683059'));
  static final onTertiaryLightMode = Color(int.parse('4294967295'));
  static final tertiaryContainerLightMode = Color(int.parse('4294760443'));
  static final onTertiaryContainerLightMode = Color(int.parse('4280947501'));
  static final errorLightMode = Color(int.parse('4290386458'));
  static final onErrorLightMode = Color(int.parse('4294967295'));
  static final errorContainerLightMode = Color(int.parse('4294957782'));
  static final onErrorContainerLightMode = Color(int.parse('4282449922'));
  static final outlineLightMode = Color(int.parse('4285888384'));
  static final outlineVariantLightMode = Color(int.parse('4291151568'));
  static final backgroundLightMode = Color(int.parse('4294900735'));
  static final onBackgroundLightMode = Color(int.parse('4279966495'));
  static final surfaceLightMode = Color(int.parse('4294900735'));
  static final onSurfaceLightMode = Color(int.parse('4279966495'));
  static final surfaceVariantLightMode = Color(int.parse('4292993772'));
  static final onSurfaceVariantLightMode = Color(int.parse('4282664527'));
  static final inverseSurfaceLightMode = Color(int.parse('4281348148'));
  static final onInverseSurfaceLightMode = Color(int.parse('4294111476'));
  static final inversePrimaryLightMode = Color(int.parse('4289709823'));
  static final shadowLightMode = Color(int.parse('4278190080'));
  static final scrimLightMode = Color(int.parse('4278190080'));
  static final surfaceTintLightMode = Color(int.parse('4278213063'));

  static final primaryDarkMode = Color(int.parse('4289709823'));
  static final onPrimaryDarkMode = Color(int.parse('4278201708'));
  static final primaryContainerDarkMode = Color(int.parse('4278207384'));
  static final onPrimaryContainerDarkMode = Color(int.parse('4292469503'));
  static final secondaryDarkMode = Color(int.parse('4290758364'));
  static final onSecondaryDarkMode = Color(int.parse('4280889410'));
  static final secondaryContainerDarkMode = Color(int.parse('4282337113'));
  static final onSecondaryContainerDarkMode = Color(int.parse('4292600569'));
  static final tertiaryDarkMode = Color(int.parse('4292852702'));
  static final onTertiaryDarkMode = Color(int.parse('4282394435'));
  static final tertiaryContainerDarkMode = Color(int.parse('4284038746'));
  static final onTertiaryContainerDarkMode = Color(int.parse('4294760443'));
  static final errorDarkMode = Color(int.parse('4294948011'));
  static final onErrorDarkMode = Color(int.parse('4285071365'));
  static final errorContainerDarkMode = Color(int.parse('4287823882'));
  static final onErrorContainerDarkMode = Color(int.parse('4294948011'));
  static final outlineDarkMode = Color(int.parse('4287598745'));
  static final outlineVariantDarkMode = Color(int.parse('4282664527'));
  static final backgroundDarkMode = Color(int.parse('4279966495'));
  static final onBackgroundDarkMode = Color(int.parse('4293124838'));
  static final surfaceDarkMode = Color(int.parse('4279966495'));
  static final onSurfaceDarkMode = Color(int.parse('4293124838'));
  static final surfaceVariantDarkMode = Color(int.parse('4282664527'));
  static final onSurfaceVariantDarkMode = Color(int.parse('4291151568'));
  static final inverseSurfaceDarkMode = Color(int.parse('4293124838'));
  static final onInverseSurfaceDarkMode = Color(int.parse('4281348148'));
  static final inversePrimaryDarkMode = Color(int.parse('4278213063'));
  static final shadowDarkMode = Color(int.parse('4278190080'));
  static final scrimDarkMode = Color(int.parse('4278190080'));
  static final surfaceTintDarkMode = Color(int.parse('4289709823'));

  // Colors defined manually

  static const backgroundGreyColor = Color.fromRGBO(246, 246, 248, 1);
  static const whiteCardColor = Color.fromRGBO(255, 255, 255, 1);
  static const blueColor = Color.fromRGBO(55, 124, 246, 1);
  static const otherBluecolor = Color.fromRGBO(149, 224, 251, 1);
  static const greyColor = Color.fromRGBO(157, 158, 162, 1);
  static const dividerColor = Color.fromARGB(255, 235, 235, 235);
  static const toolTipBgColor = Color.fromARGB(255, 12, 11, 49);
  static const lightBlueColor = Color.fromARGB(255, 166,222,248);
  static const lightBlueStripColor = Color.fromARGB(255, 102,160,244);
  static const positiveNotificationCardBackgroundColor =
      Color.fromARGB(255, 233, 244, 236);
  static const positiveNotificationCardForegroundColor =
      Color.fromARGB(255, 68, 153, 63);
  static const negativeNotificationCardBackgroundColor =
      Color.fromARGB(255, 255, 0, 0);
  static const negativeNotificationCardForegroundColor =
      Color.fromARGB(255, 255, 255, 255);

  const AppColors._();
}
