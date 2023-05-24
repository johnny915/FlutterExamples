part of 'language_bloc.dart';

abstract class LanguageState extends Equatable {
  const LanguageState();
}

class LanguageInitial extends LanguageState {
  @override
  List<Object> get props => [];
}
class changed_lang extends LanguageState{
  Locale local;
  changed_lang({ required this.local});

  @override
  List<Object?> get props => [local];
}