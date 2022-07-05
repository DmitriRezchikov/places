// internetova22 hours ago
// Давайте начнем делать заготовки для темы приложения.
// Выносим в отдельные классы. В папке ui делаем папку res и там создаем:

// 1. У нас дожна быть папка res И в корне И в ui?
// 2. Что такое ```dart?  Как этот файл назвать?  Как угодно?

// Строковые константы приложения
import 'package:flutter/material.dart';

class AppStrings {
  static const appTitle = 'Это тайтл';
}

class AppAssets {
  static const favorite = 'res/icons/heart_icon.svg';
}

class AppTypography {
  static const textText16Regular = TextStyle(
    fontSize: 16.0,
    height: 1.25,
    fontWeight: FontWeight.w400,
  );
}

class AppColors {
  static const myColor = Colors.red;
}
