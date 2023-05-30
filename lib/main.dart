import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:localization/Bloc/LanguageBloc/language_bloc.dart';
import 'Screen/HomeScreen.dart';
import 'Screen/Screen2.dart';

void main() {
  MultiBlocProvider appProviders = MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LanguageBloc()..add(GetLanguage()),
        ),
      ],
      child: const MyApp()
  );
  runApp(appProviders);
}


final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
// final l10n = AppLocalizations.of(context)!;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LanguageBloc, LanguageState>(
      builder: (context, state) {
        return MaterialApp(
            title: 'Flutter Demo',
            navigatorKey: navigatorKey,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            home: const Screen2(),
            locale: state.language,
            supportedLocales: AppLocalizations.supportedLocales,
            localizationsDelegates: AppLocalizations.localizationsDelegates
        );
      },
    );
  }
}

