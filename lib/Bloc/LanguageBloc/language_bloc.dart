import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'language_event.dart';
part 'language_state.dart';

const languagePrefsKey = 'languagePrefs';

class LanguageBloc extends Bloc<LanguageEvent, LanguageState> {

  LanguageBloc() : super(LanguageState(language: const Locale("en"))) {

    on<ChangeLanguage>((event, emit) async{
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(languagePrefsKey, event.key);
      emit(state.copyWith(Locale(event.key)));
    });

    on<GetLanguage>((event, emit) async{
      final prefs = await SharedPreferences.getInstance();
      final selectedLanguage = prefs.getString(languagePrefsKey);
      if( selectedLanguage!=null){
        emit(state.copyWith(Locale(selectedLanguage)));
      }else{
        emit(state.copyWith(const Locale("en")));
      }
    });

  }
}
