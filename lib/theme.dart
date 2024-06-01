import 'package:flutter/material.dart';

ThemeData buildLightThemeData() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.orange.shade50,
    brightness: Brightness.light,
    appBarTheme: _buildAppBarTheme(),
    elevatedButtonTheme: _buildElevatedButtonThemeData(),
    floatingActionButtonTheme: _buildFloatingActionButtonThemeData(),
    inputDecorationTheme: _buildInputDecorationTheme(),
    tabBarTheme: buildTabBarTheme(),
  );
}


ThemeData buildDarkThemeData() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.orange.shade50,
    brightness: Brightness.dark,
    appBarTheme: _buildAppBarTheme(),
    elevatedButtonTheme: _buildElevatedButtonThemeData(),
    floatingActionButtonTheme: _buildFloatingActionButtonThemeData(),
    inputDecorationTheme: _buildInputDecorationTheme(),
    tabBarTheme: buildTabBarTheme(),

  );
}

ElevatedButtonThemeData _buildElevatedButtonThemeData() {
  return ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        fixedSize: const Size.fromWidth(double.maxFinite),
        backgroundColor: Colors.deepOrangeAccent,
        foregroundColor: Colors.white,
        textStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
  );
}

AppBarTheme _buildAppBarTheme() {
  return const AppBarTheme(
      backgroundColor: Colors.deepOrangeAccent,
      foregroundColor: Colors.white,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 24,
      ),
      iconTheme: IconThemeData(color: Colors.white, size: 35));
}

FloatingActionButtonThemeData _buildFloatingActionButtonThemeData() {
  return FloatingActionButtonThemeData(
    backgroundColor: Colors.deepOrangeAccent,
    foregroundColor: Colors.white,
    extendedTextStyle: const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
    shape: RoundedRectangleBorder(
      borderRadius:  BorderRadius.circular(8),
    ),
  );
}

InputDecorationTheme _buildInputDecorationTheme() {
  return InputDecorationTheme(
    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: Colors.deepOrangeAccent, width: 2)),
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: Colors.deepOrangeAccent, width: 2)),
    errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: Colors.red, width: 2)),
    focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: Colors.red, width: 2)),
  );
}

TabBarTheme buildTabBarTheme() {
  return TabBarTheme(
    indicatorSize: TabBarIndicatorSize.tab,
    indicator: BoxDecoration(
      color: Colors.deepOrangeAccent.shade100,
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(8),
        topRight: Radius.circular(8),
      ),
    ),
    labelColor: Colors.white,
    labelStyle: const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
    unselectedLabelColor: Colors.white,
    unselectedLabelStyle:
    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
  );
}