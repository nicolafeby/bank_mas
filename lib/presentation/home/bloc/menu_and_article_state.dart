part of 'menu_and_article_bloc.dart';

sealed class MenuAndArticleState extends Equatable {
  const MenuAndArticleState();

  @override
  List<Object> get props => [];
}

class MenuAndArticleLoadInProgress extends MenuAndArticleState {}

class MenuAndArticleLoadInSuccess extends MenuAndArticleState {
  final MenuAndArticleEntity entity;

  const MenuAndArticleLoadInSuccess({
    required this.entity,
  });

  @override
  List<Object> get props => [entity];
}

class MenuAndArticleLoadInFailure extends MenuAndArticleState {}
