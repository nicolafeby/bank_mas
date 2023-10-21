part of 'menu_and_article_bloc.dart';

sealed class MenuAndArticleEvent extends Equatable {
  const MenuAndArticleEvent();

  @override
  List<Object> get props => [];
}

class MenuAndArticleStarted extends MenuAndArticleEvent{}
