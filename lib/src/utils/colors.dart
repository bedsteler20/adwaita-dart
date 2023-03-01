import 'dart:io';

import 'package:flutter/material.dart' show Color, MaterialColor;
import 'package:xdg_directories/xdg_directories.dart';
// see https://developer.gnome.org/hig/reference/palette.html
// and https://gitlab.gnome.org/GNOME/libadwaita/-/blob/main/src/stylesheet/_palette.scss
// and https://gitlab.gnome.org/Teams/Design/brand/-/blob/master/brand-book.pdf

/// The Adwaita color palette
class AdwaitaColors {
  AdwaitaColors._();
  static final _colors = <String, Color>{
    'accent_color': const Color(0xFF4a86cf),
    'blue_1': const Color(0xFF99C1F1),
    'blue_2': const Color(0xFF62a0ea),
    'blue_3': const Color(0xFF3584e4),
    'blue_4': const Color(0xFF1c71d8),
    'blue_5': const Color(0xFF1a5fb4),
    'green_1': const Color(0xFF8ff0a4),
    'green_2': const Color(0xFF57e389),
    'green_3': const Color(0xFF33d17a),
    'green_4': const Color(0xFF2ec27e),
    'green_5': const Color(0xFF26a269),
    'yellow_1': const Color(0xFFf9f06b),
    'yellow_2': const Color(0xFFf8e45c),
    'yellow_3': const Color(0xFFf6d32d),
    'yellow_4': const Color(0xFFf5c211),
    'yellow_5': const Color(0xFFe5a50a),
    'orange_1': const Color(0xFFffbe6f),
    'orange_2': const Color(0xFFffa348),
    'orange_3': const Color(0xFFff7800),
    'orange_4': const Color(0xFFe66100),
    'orange_5': const Color(0xFFc64600),
    'red_1': const Color(0xFFf66151),
    'red_2': const Color(0xFFed333b),
    'red_3': const Color(0xFFe01b24),
    'red_4': const Color(0xFFc01c28),
    'red_5': const Color(0xFFa51d2d),
    'purple_1': const Color(0xFFdc8add),
    'purple_2': const Color(0xFFc061cb),
    'purple_3': const Color(0xFF9141ac),
    'purple_4': const Color(0xFF813d9c),
    'purple_5': const Color(0xFF613583),
    'brown_1': const Color(0xFFcdab8f),
    'brown_2': const Color(0xFFb5835a),
    'brown_3': const Color(0xFF986a44),
    'brown_4': const Color(0xFF865e3c),
    'brown_5': const Color(0xFF63452c),
    'light_1': const Color(0xFFffffff),
    'light_2': const Color(0xFFf6f5f4),
    'light_3': const Color(0xFFdeddda),
    'light_4': const Color(0xFFc0bfbc),
    'light_5': const Color(0xFF9a9996),
    'dark_1': const Color(0xFF77767b),
    'dark_2': const Color(0xFF5e5c64),
    'dark_3': const Color(0xFF3d3846),
    'dark_4': const Color(0xFF241f31),
    'dark_5': const Color(0xFF000000),
    'window_bg_color': const Color(0xFFfafafa),
    'dark_window_bg_color': const Color(0xFF242424),
    'card_bg_color': const Color(0xFFFFFFFF),
    'dark_card_bg_color': const Color(0xFF383838),
    'headerbar_bg_color': const Color(0xFFebebeb),
    'headerbar_fg_color': const Color(0x52000000),
    'dark_headerbar_bg_color': const Color(0xFF303030),
    'dark_headerbar_fg_color': const Color(0xFFFFFFFF),
    'view_fg_color': const Color(0xFF000000),
    'dark_view_fg_color': const Color(0xFFffffff)
  };

  ///Default accent color
  static Color get blueAccent => _colors['accent_color']!;
  static Color get accent => _colors['accent_color']!;

  ///Blue shades
  static Color get blue1 => _colors['blue_1']!;
  static Color get blue2 => _colors['blue_2']!;
  static Color get blue3 => _colors['blue_3']!;
  static Color get blue4 => _colors['blue_4']!;
  static Color get blue5 => _colors['blue_5']!;

  ///Green shades
  static Color get green1 => _colors['green_1']!;
  static Color get green2 => _colors['green_2']!;
  static Color get green3 => _colors['green_3']!;
  static Color get green4 => _colors['green_4']!;
  static Color get green5 => _colors['green_5']!;

  ///Yellow shades
  static Color get yellow1 => _colors['yellow_1']!;
  static Color get yellow2 => _colors['yellow_2']!;
  static Color get yellow3 => _colors['yellow_3']!;
  static Color get yellow4 => _colors['yellow_4']!;
  static Color get yellow5 => _colors['yellow_5']!;

  ///Orange shades
  static Color get orange1 => _colors['orange_1']!;
  static Color get orange2 => _colors['orange_2']!;
  static Color get orange3 => _colors['orange_3']!;
  static Color get orange4 => _colors['orange_4']!;
  static Color get orange5 => _colors['orange_5']!;

  ///Red shades
  static Color get red1 => _colors['red_1']!;
  static Color get red2 => _colors['red_2']!;
  static Color get red3 => _colors['red_3']!;
  static Color get red4 => _colors['red_4']!;
  static Color get red5 => _colors['red_5']!;

  ///Purple shades
  static Color get purple1 => _colors['purple_1']!;
  static Color get purple2 => _colors['purple_2']!;
  static Color get purple3 => _colors['purple_3']!;
  static Color get purple4 => _colors['purple_4']!;
  static Color get purple5 => _colors['purple_5']!;

  ///Brown shades
  static Color get brown1 => _colors['brown_1']!;
  static Color get brown2 => _colors['brown_2']!;
  static Color get brown3 => _colors['brown_3']!;
  static Color get brown4 => _colors['brown_4']!;
  static Color get brown5 => _colors['brown_5']!;

  ///Light shades
  static Color get light1 => _colors['light_1']!;
  static Color get light2 => _colors['light_2']!;
  static Color get light3 => _colors['light_3']!;
  static Color get light4 => _colors['light_4']!;
  static Color get light5 => _colors['light_5']!;

  ///Dark shades
  static Color get dark1 => _colors['dark_1']!;
  static Color get dark2 => _colors['dark_2']!;
  static Color get dark3 => _colors['dark_3']!;
  static Color get dark4 => _colors['dark_4']!;
  static Color get dark5 => _colors['dark_5']!;

  // Defined in https://gitlab.gnome.org/GNOME/libadwaita/-/blob/main/src/stylesheet/_defaults.scss
  ///Background color
  static Color get backgroundColor => _colors['window_bg_color']!;

  ///Background dark color
  static Color get darkBackgroundColor => _colors['dark_window_bg_color']!;

  ///Card background color
  static Color get cardBackground => _colors['card_bg_color']!;

  ///Card dark background color
  static Color get darkCardBackground => _colors['dark_card_bg_color']!;

  ///Header bar background color
  static Color get headerBarBackground => _colors['headerbar_bg_color']!;

  ///Header bar foreground color
  static Color get headerBarForeground => _colors['headerbar_fg_color']!;

  ///Header bar dark background color
  static Color get darkHeaderBarBackground =>
      _colors['dark_headerbar_bg_color']!;

  ///Header bar dark foreground color
  static Color get darkHeaderBarForeground =>
      _colors['dark_headerbar_fg_color']!;

  ///view foreground color
  static Color get viewForeground => _colors['view_fg_color']!;

  ///View dark color
  static Color get darkViewForeground => _colors['dark_view_fg_color']!;

  ///Button color
  static Color get button => viewForeground.withAlpha(25);

  ///Button dark color
  static Color get darkButton => darkViewForeground.withAlpha(25);

  ///Border color
  static Color get border => dark5.withOpacity(0.18);

  ///Button dark color
  static Color get darkBorder => dark5.withOpacity(0.75);

  static MaterialColor _createMaterialColor(Color color) {
    final strengths = <double>[.05];
    final swatch = <int, Color>{};
    final r = color.red, g = color.green, b = color.blue;

    for (var i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }
    for (final strength in strengths) {
      final ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    }
    return MaterialColor(color.value, swatch);
  }

  /// Default accent swatch color
  static MaterialColor primarySwatchColor = _createMaterialColor(blueAccent);

  /// Adwaita grey swatch color
  static MaterialColor warmGrey = _createMaterialColor(light4);

  static void initialize() {
    final configFile = '${configHome.path}/gtk-4.0/gtk.css';
    final file = File(configFile);
    if (!file.existsSync()) return;
    for (var line in file.readAsLinesSync()) {
      if (line.startsWith('@define-color ')) {
        line = line.replaceFirst('@define-color ', '').replaceAll(';', '');
        final split = line.indexOf(' ');
        final name = line.substring(0, split);
        final val = line.substring(split + 1);
        final color = _getColor(val, _colors);
        if (color != null) {
          _colors[name] = color;
        }
      }
    }
    warmGrey = _createMaterialColor(light4);
    primarySwatchColor = _createMaterialColor(blueAccent);
  }

  static Color? _getColor(String value, Map<String, Color> ctx) {
    if (value.startsWith('@')) {
      return ctx[value.substring(1)];
    } else if (value.startsWith('#')) {
      var hexColor = value.replaceAll('#', '');
      if (hexColor.length == 6) {
        hexColor = 'FF$hexColor';
      }
      if (hexColor.length == 8) {
        return Color(int.parse('0x$hexColor'));
      }
    } else if (value.startsWith('rgb')) {
      var rx =
          RegExp(r'^rgba?\((\d+),\s*(\d+),\s*(\d+)(?:,\s*(\d+(?:\.\d+)?))?\)$');
      var matches = rx.allMatches(value).first;
      if (matches.group(4) != null) {
        return Color.fromRGBO(
            int.parse(matches.group(1)!),
            int.parse(matches.group(2)!),
            int.parse(matches.group(3)!),
            double.parse(matches.group(4)!));
      } else {
        return Color.fromARGB(
          0,
          int.parse(matches.group(1)!),
          int.parse(matches.group(2)!),
          int.parse(matches.group(3)!),
        );
      }
    }
    return null;
  }
}
