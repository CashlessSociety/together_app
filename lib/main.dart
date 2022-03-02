import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:together_app/screens/main_entry/main_entry_screen.dart';
import 'package:together_app/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(387, 778),
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Together App',
        theme: ThemeData(
          //todo: change global font setting here if needed
          textTheme: GoogleFonts.robotoTextTheme(
            Theme.of(context).textTheme,
          ),
        ),
        builder: (context, widget) {
          ScreenUtil.setContext(context);
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: widget!,
          );
        },
        home: const MainEntryScreen(),
        onGenerateRoute: generateRoutes,
      ),
    );
  }
}
