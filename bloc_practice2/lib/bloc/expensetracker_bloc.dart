import 'package:bloc/bloc.dart';
import 'package:bloc_practice2/model/data_model.dart';
part 'expensetracker_event.dart';
part 'expensetracker_state.dart';

class ExpenseTrackerBloc
    extends Bloc<ExpenseTrackerEvent, ExpenseTrackerState> {
  ExpenseTrackerBloc() : super(ExpenseTrackerState.initial()) {
    on<OnUpdateTitle>(
      (event, emit) {
        emit(state.copyWith(title: event.title));
      },
    );

    on<OnUpdateDescrip>(
      (event, emit) {
        emit(state.copyWith(descrip: event.descrip));
      },
    );

    on<OnUpdateAmount>(
      (event, emit) {
        emit(state.copyWith(amount: event.amount));
      },
    );

    on<OnUpdateDate>(
      (event, emit) {
        emit(state.copyWith(date: event.date));
      },
    );

    on<OnSubmit>(
      (event, emit) {
      List<DataModel> abc = state.data;
      abc.add(DataModel(
          title: state.title,
          descrip: state.descrip,
          amount: state.amount,
          date: state.date));
      emit(state.copyWith(data: abc));
      emit(state.copyWith(title: '', descrip: '', date: '', amount: 0));
      },
    );

   
  }
}
