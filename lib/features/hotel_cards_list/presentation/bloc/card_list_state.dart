part of 'card_list_bloc.dart';

enum ScreenStatus {
  init,
  loading,
  success,
  failure,

}

class CardListState {
  ScreenStatus? screenStatus;
  CardsModel? cardsModel;


  CardListState({
    this.screenStatus,
    this.cardsModel,

  });
  CardListState copyWith(
      {screenStatus,
      cardsModel,
      numOfStars,
      recommendations,
  }) {
    return CardListState(
        screenStatus: screenStatus ?? this.screenStatus,
        cardsModel: cardsModel ?? this.cardsModel
    );
  }
}

class CardListInitial extends CardListState {
  CardListInitial({super.screenStatus});
}
