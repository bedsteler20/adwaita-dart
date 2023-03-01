import 'package:adwaita/src/utils/colors.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show SystemUiOverlayStyle;

/// Generate Adwaita light and dark theme.
class AdwaitaThemeData {
  const AdwaitaThemeData._();

  static final _lightColorScheme = ColorScheme.fromSwatch(
    // NOTE(robert-ancell): Light shades from 'Tint' on website, dark shades
    // calculated.
    primarySwatch: AdwaitaColors.primarySwatchColor,
    primaryColorDark: AdwaitaColors.darkBackgroundColor,
    accentColor: AdwaitaColors.blueAccent,
    cardColor: AdwaitaColors.cardBackground,
    backgroundColor: AdwaitaColors.backgroundColor,
    errorColor: AdwaitaColors.red5,
  );

  static final _darkColorScheme = ColorScheme.fromSwatch(
    // NOTE(robert-ancell): Light shades from 'Tint' on website, dark shades
    // calculated.
    primarySwatch: AdwaitaColors.primarySwatchColor,
    primaryColorDark: AdwaitaColors.darkBackgroundColor,
    accentColor: AdwaitaColors.blueAccent,
    cardColor: AdwaitaColors.darkCardBackground,
    backgroundColor: AdwaitaColors.darkBackgroundColor,
    errorColor: AdwaitaColors.red5,
    brightness: Brightness.dark,
  );

  static ShapeBorder getDialogShape([Color color = Colors.white]) =>
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6),
        side: BorderSide(color: color.withOpacity(0.2)),
      );

  static TextTheme getTextTheme([Brightness brightness = Brightness.light]) {
    final color = brightness == Brightness.light ? Colors.black : Colors.white;
    return TextTheme(
      headline1: TextStyle(
        fontSize: 26,
        color: color,
        fontWeight: FontWeight.bold,
      ),
      headline2: TextStyle(
        fontSize: 21,
        color: color,
        fontWeight: FontWeight.bold,
      ),
      headline3: TextStyle(
        fontSize: 20,
        color: color,
        fontWeight: FontWeight.bold,
      ),
      headline4: TextStyle(
        fontSize: 17,
        color: color,
        fontWeight: FontWeight.bold,
      ),
      headline5: TextStyle(
        fontSize: 15,
        color: color,
        fontWeight: FontWeight.bold,
      ),
      headline6: TextStyle(
        fontSize: 13,
        color: color,
        fontWeight: FontWeight.w600,
      ),
      bodyText1: TextStyle(
        fontSize: 15,
        color: color,
      ),
      caption: TextStyle(
        fontSize: 13,
        color: color,
        fontWeight: FontWeight.w400,
      ),
    );
  }

  /// A default light theme.
  static ThemeData light({String? fontFamily}) => ThemeData(
        fontFamily: fontFamily,
        tabBarTheme: TabBarTheme(labelColor: _lightColorScheme.onSurface),
        brightness: Brightness.light,
        splashFactory: NoSplash.splashFactory,
        primaryColor: _lightColorScheme.primary,
        canvasColor: _lightColorScheme.background,
        scaffoldBackgroundColor: _lightColorScheme.background,
        bottomAppBarColor: _lightColorScheme.surface,
        cardColor: _lightColorScheme.surface,
        dividerColor: _lightColorScheme.onSurface.withOpacity(0.12),
        backgroundColor: _lightColorScheme.background,
        dialogBackgroundColor: _lightColorScheme.background,
        dialogTheme: DialogTheme(
          backgroundColor: _lightColorScheme.background,
          shape: getDialogShape(Colors.black),
        ),
        textTheme: getTextTheme(),
        errorColor: _lightColorScheme.error,
        indicatorColor: _lightColorScheme.secondary,
        applyElevationOverlayColor: false,
        colorScheme: _lightColorScheme,
        buttonTheme: _buttonThemeData,
        elevatedButtonTheme: _getElevatedButtonThemeData(Brightness.light),
        outlinedButtonTheme: _outlinedButtonThemeData,
        textButtonTheme: _textButtonThemeData,
        switchTheme: _switchStyleLight,
        checkboxTheme: _checkStyleLight,
        radioTheme: _radioStyleLight,
        appBarTheme: _appBarLightTheme,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: AdwaitaColors.blueAccent,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: _lightColorScheme.primary,
          unselectedItemColor: AdwaitaColors.dark3,
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: AdwaitaColors.button,
          enabledBorder:  const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(color: Colors.transparent),
          ),
          focusedBorder:  OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(8),
            ),
            borderSide: BorderSide(
              color: AdwaitaColors.blueAccent,
            ),
          ),
        ),
      );

  /// A default dark theme.
  static ThemeData dark({String? fontFamily}) => ThemeData(
        fontFamily: fontFamily,
        tabBarTheme: TabBarTheme(labelColor: _darkColorScheme.onBackground),
        brightness: Brightness.dark,
        splashFactory: NoSplash.splashFactory,
        primaryColor: _darkColorScheme.primary,
        canvasColor: _darkColorScheme.background,
        scaffoldBackgroundColor: _darkColorScheme.background,
        bottomAppBarColor: _darkColorScheme.surface,
        cardColor: _darkColorScheme.surface,
        dividerColor: _darkColorScheme.onSurface.withOpacity(0.12),
        backgroundColor: _darkColorScheme.background,
        dialogBackgroundColor: _darkColorScheme.background,
        dialogTheme: DialogTheme(
          backgroundColor: _darkColorScheme.background,
          shape: getDialogShape(),
        ),
        textTheme: getTextTheme(Brightness.dark),
        errorColor: _darkColorScheme.error,
        indicatorColor: _darkColorScheme.secondary,
        applyElevationOverlayColor: true,
        colorScheme: _darkColorScheme,
        buttonTheme: _buttonThemeData,
        textButtonTheme: _darkTextButtonThemeData,
        elevatedButtonTheme: _getElevatedButtonThemeData(Brightness.dark),
        outlinedButtonTheme: _darkOutlinedButtonThemeData,
        switchTheme: _switchStyleDark,
        checkboxTheme: _checkStyleDark,
        radioTheme: _radioStyleDark,
        primaryColorDark: AdwaitaColors.blueAccent,
        appBarTheme: _appBarDarkTheme,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: AdwaitaColors.blueAccent,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: _darkColorScheme.primary,
          unselectedItemColor: AdwaitaColors.warmGrey.shade300,
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: AdwaitaColors.darkButton,
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(color: Colors.transparent),
          ),
          focusedBorder:  OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(8),
            ),
            borderSide: BorderSide(color: AdwaitaColors.blueAccent),
          ),
        ),
      );

  // Special casing some widgets to get the desired Adwaita look
  // Buttons

  static final _commonButtonStyle = ButtonStyle(
    visualDensity: VisualDensity.standard,
    backgroundColor: MaterialStateProperty.resolveWith<Color?>((states) {
      if (states.contains(MaterialState.pressed)) {
        return AdwaitaColors.light4;
      }
      return AdwaitaColors.light2; // Use the component's default.
    }),
  );

  static final _darkCommonButtonStyle = ButtonStyle(
    visualDensity: VisualDensity.standard,
    backgroundColor: MaterialStateProperty.resolveWith<Color?>((states) {
      if (states.contains(MaterialState.pressed)) {
        return AdwaitaColors.dark5;
      }
      return AdwaitaColors.dark2; // Use the component's default.
    }),
  );

  static final _buttonThemeData = ButtonThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4),
    ),
  );

  static final _outlinedButtonThemeData = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      visualDensity: _commonButtonStyle.visualDensity,
      primary: AdwaitaColors.dark4,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
    ),
  );

  static final _darkOutlinedButtonThemeData = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      visualDensity: _commonButtonStyle.visualDensity,
      primary: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        side: BorderSide(color: Colors.black.withOpacity(0.75)),
      ),
    ),
  );

  static final _textButtonThemeData = TextButtonThemeData(
    style: TextButton.styleFrom(
      visualDensity: _commonButtonStyle.visualDensity,
      backgroundColor: AdwaitaColors.button,
      primary: AdwaitaColors.dark4,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        side: BorderSide(color: Colors.transparent),
      ),
    ),
  );

  static final _darkTextButtonThemeData = TextButtonThemeData(
    style: TextButton.styleFrom(
      visualDensity: _darkCommonButtonStyle.visualDensity,
      backgroundColor: AdwaitaColors.darkButton,
      primary: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        side: BorderSide(color: Colors.transparent),
      ),
    ),
  );

  static ElevatedButtonThemeData _getElevatedButtonThemeData(
    Brightness brightness,
  ) {
    if (brightness == Brightness.light) {
      return ElevatedButtonThemeData(style: _commonButtonStyle);
    }
    return ElevatedButtonThemeData(style: _darkCommonButtonStyle);
  }

// Switches
  static Color _getSwitchThumbColorDark(Set<MaterialState> states) {
    if (states.contains(MaterialState.disabled)) {
      return AdwaitaColors.dark2;
    } else {
      if (states.contains(MaterialState.selected)) {
        return AdwaitaColors.blueAccent;
      } else {
        return AdwaitaColors.warmGrey;
      }
    }
  }

  static Color _getSwitchTrackColorDark(Set<MaterialState> states) {
    if (states.contains(MaterialState.disabled)) {
      return AdwaitaColors.dark2.withAlpha(120);
    } else {
      if (states.contains(MaterialState.selected)) {
        return AdwaitaColors.blueAccent.withAlpha(160);
      } else {
        return AdwaitaColors.warmGrey.withAlpha(80);
      }
    }
  }

  static final _switchStyleDark = SwitchThemeData(
    thumbColor: MaterialStateProperty.resolveWith(_getSwitchThumbColorDark),
    trackColor: MaterialStateProperty.resolveWith(_getSwitchTrackColorDark),
  );

  static Color _getSwitchThumbColorLight(Set<MaterialState> states) {
    if (states.contains(MaterialState.disabled)) {
      return AdwaitaColors.warmGrey.shade200;
    } else {
      if (states.contains(MaterialState.selected)) {
        return AdwaitaColors.blueAccent;
      } else {
        return Colors.white;
      }
    }
  }

  static Color _getSwitchTrackColorLight(Set<MaterialState> states) {
    if (states.contains(MaterialState.disabled)) {
      return AdwaitaColors.warmGrey.shade200;
    } else {
      if (states.contains(MaterialState.selected)) {
        return AdwaitaColors.blueAccent.withAlpha(180);
      } else {
        return AdwaitaColors.warmGrey.shade300;
      }
    }
  }

  static final _switchStyleLight = SwitchThemeData(
    thumbColor: MaterialStateProperty.resolveWith(_getSwitchThumbColorLight),
    trackColor: MaterialStateProperty.resolveWith(_getSwitchTrackColorLight),
  );

// Checks
  static Color _getCheckFillColorDark(Set<MaterialState> states) {
    if (!states.contains(MaterialState.disabled)) {
      if (states.contains(MaterialState.selected)) {
        return AdwaitaColors.blueAccent;
      }
      return AdwaitaColors.warmGrey.shade400;
    }
    return AdwaitaColors.warmGrey.withOpacity(0.4);
  }

  static Color _getCheckColorDark(Set<MaterialState> states) {
    if (!states.contains(MaterialState.disabled)) {
      return Colors.white;
    }
    return AdwaitaColors.warmGrey;
  }

  static final _checkStyleDark = CheckboxThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(2),
    ),
    fillColor: MaterialStateProperty.resolveWith(_getCheckFillColorDark),
    checkColor: MaterialStateProperty.resolveWith(_getCheckColorDark),
  );

  static Color _getCheckFillColorLight(Set<MaterialState> states) {
    if (!states.contains(MaterialState.disabled)) {
      if (states.contains(MaterialState.selected)) {
        return AdwaitaColors.blueAccent;
      }
      return AdwaitaColors.warmGrey;
    }
    return AdwaitaColors.warmGrey.shade300;
  }

  static Color _getCheckColorLight(Set<MaterialState> states) {
    if (!states.contains(MaterialState.disabled)) {
      return Colors.white;
    }
    return AdwaitaColors.warmGrey;
  }

  static final _checkStyleLight = CheckboxThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(2),
    ),
    fillColor: MaterialStateProperty.resolveWith(_getCheckFillColorLight),
    checkColor: MaterialStateProperty.resolveWith(_getCheckColorLight),
  );

// Radios
  static final _radioStyleDark = RadioThemeData(
    fillColor: MaterialStateProperty.resolveWith(_getCheckFillColorDark),
  );

  static final _radioStyleLight = RadioThemeData(
    fillColor: MaterialStateProperty.resolveWith(_getCheckFillColorLight),
  );

  static final _appBarLightTheme = AppBarTheme(
    elevation: 1,
    titleTextStyle: getTextTheme().headline5,
    systemOverlayStyle: SystemUiOverlayStyle.light,
    backgroundColor: AdwaitaColors.headerBarBackground,
    foregroundColor: AdwaitaColors.headerBarForeground,
    iconTheme:  IconThemeData(color: AdwaitaColors.dark3),
    actionsIconTheme:  IconThemeData(color: AdwaitaColors.dark3),
  );

  static final _appBarDarkTheme = AppBarTheme(
    elevation: 1,
    titleTextStyle: getTextTheme(Brightness.dark).headline5,
    systemOverlayStyle: SystemUiOverlayStyle.dark,
    backgroundColor: AdwaitaColors.darkHeaderBarBackground,
    foregroundColor: AdwaitaColors.darkHeaderBarForeground,
  );
}
