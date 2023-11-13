import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../data/models/CardsListModel.dart';
import '../../domain/use_cases/get_card_data_use_case.dart';

part 'card_list_event.dart';
part 'card_list_state.dart';

class CardListBloc extends Bloc<CardListEvent, CardListState> {
  static CardListBloc get(context) => BlocProvider.of(context);
  GetCardDataUseCase getCardDataUseCase;
  CardListBloc(this.getCardDataUseCase) : super(CardListInitial()) {
    on<CardListEvent>(
            (event, emit) async {
          if (event is GetCardsEvent) {
            try {
              CardsModel cardsModel = await getCardDataUseCase.call();
              emit(state.copyWith(
                  cardsModel: cardsModel, screenStatus: ScreenStatus.success));
            } catch (e) {
              emit(state.copyWith(screenStatus: ScreenStatus.failure));
            }
          } else if (event is SortByRecommended);
        }
    );
  }
}
