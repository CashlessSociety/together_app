import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';
import 'package:oktoast/oktoast.dart';
import 'package:provider/provider.dart';
import 'package:together_app/graphql/graphql_client.dart';
import 'package:together_app/screens/main_entry/main_entry_screen.dart';
import 'package:together_app/utils/providers.dart';
import 'package:together_app/utils/routes.dart';

void main() async {
  const tag = String.fromEnvironment('env', defaultValue: 'prod');
  await initHiveForFlutter();
  await dotenv.load(fileName: ".env.$tag");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(387, 778),
      builder: () => GraphQLProvider(
        client: createGraphqlClient(),
        child: MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (context) => BottomNavNotifier())
          ],
          child: KeyboardDismisser(
            child: OKToast(
              child: GetMaterialApp(
                debugShowCheckedModeBanner: false,
                title: 'Together App',
                theme: ThemeData(
                  textTheme: GoogleFonts.interTextTheme(
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
                initialRoute: MainEntryScreen.routeName,
                routes: getRoutes(context),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
