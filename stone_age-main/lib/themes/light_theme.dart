part of 'themes.dart';

class _LightTheme {
  static ThemeData lightThemeData = ThemeData(
    brightness: Brightness.light,
    // fontFamily: 'Gilroy',
    textTheme: GoogleFonts.interTextTheme(),
  ).copyWith(
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        TargetPlatform.android: CupertinoPageTransitionsBuilder(),
      },
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: Colors.black.withOpacity(0),
    ),
    appBarTheme: AppBarTheme(color: AppColors.lightBackground),
    scaffoldBackgroundColor: AppColors.lightBackground,
    focusColor: AppColors.orange200,
    hoverColor: AppColors.orange300,
    disabledColor: AppColors.orange100,
    primaryColorLight: AppColors.orange100,
    scrollbarTheme: ScrollbarThemeData(
      thumbColor: MaterialStateProperty.all(AppColors.green100),
    ), checkboxTheme: CheckboxThemeData(
 fillColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
 if (states.contains(MaterialState.disabled)) { return null; }
 if (states.contains(MaterialState.selected)) { return AppColors.green300; }
 return null;
 }),
 ), radioTheme: RadioThemeData(
 fillColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
 if (states.contains(MaterialState.disabled)) { return null; }
 if (states.contains(MaterialState.selected)) { return AppColors.green300; }
 return null;
 }),
 ), switchTheme: SwitchThemeData(
 thumbColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
 if (states.contains(MaterialState.disabled)) { return null; }
 if (states.contains(MaterialState.selected)) { return AppColors.green300; }
 return null;
 }),
 trackColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
 if (states.contains(MaterialState.disabled)) { return null; }
 if (states.contains(MaterialState.selected)) { return AppColors.green300; }
 return null;
 }),
 ), colorScheme: const ColorScheme.light().copyWith(
      primary: AppColors.green300,
      secondary: AppColors.green100,
    ).copyWith(background: AppColors.lightBackground).copyWith(error: AppColors.orange300),
  );
}
