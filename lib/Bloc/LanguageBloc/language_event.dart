part of 'language_bloc.dart';

abstract class LanguageEvent extends Equatable {
  const LanguageEvent();
}

class ChangeLanguage extends LanguageEvent{
  String key;
  ChangeLanguage({required this.key});

  @override
  List<Object?> get props => [];
}

class GetLanguage extends LanguageEvent{
  @override
  List<Object?> get props => [];
}