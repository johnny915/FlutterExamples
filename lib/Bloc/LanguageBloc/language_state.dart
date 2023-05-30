part of 'language_bloc.dart';

class LanguageState extends Equatable {
  Locale language;

  LanguageState({required this.language});

  LanguageState copyWith(Locale language){
    return LanguageState(language: language);
  }
  @override
  List<Object?> get props => [language];
}
