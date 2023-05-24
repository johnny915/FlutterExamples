import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:localization/Bloc/LanguageBloc/language_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: (){
                    context.read<LanguageBloc>().add(ChangeLanguage(key: 'id',),);
                  },
                  child: Text(AppLocalizations.of(context)!.changeLang)),
              ElevatedButton(
                  onPressed: (){
                    context.read<LanguageBloc>().add(ChangeLanguage(key: 'en',),);
                  },
                  child: Text(AppLocalizations.of(context)!.getStarted)),
            ],
          ),
        ),
      ),
    );
  }
}
