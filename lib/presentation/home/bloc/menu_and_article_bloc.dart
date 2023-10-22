import 'package:bank_mas/core/usecases/usecase.dart';
import 'package:bank_mas/domain/entities/menu_and_article_entitity.dart';
import 'package:bank_mas/domain/usecases/menu_and_article_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'menu_and_article_event.dart';
part 'menu_and_article_state.dart';

class MenuAndArticleBloc
    extends Bloc<MenuAndArticleEvent, MenuAndArticleState> {
  MenuAndArticleBloc({
    required this.usecase,
  }) : super(MenuAndArticleLoadInProgress()) {
    on<MenuAndArticleStarted>(_onMenuAndArticleStarted);
  }

  final MenuAndArticleUsecase usecase;

  _onMenuAndArticleStarted(
    MenuAndArticleStarted event,
    Emitter<MenuAndArticleState> emit,
  ) async {
    final resp = await usecase.call(NoParams());

    final updateState = resp.fold(
      (l) => MenuAndArticleLoadInFailure(),
      (r) => MenuAndArticleLoadInSuccess(entity: r),
    );

    emit(updateState);
  }
}
