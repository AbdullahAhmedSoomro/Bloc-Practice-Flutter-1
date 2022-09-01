part of 'expensetracker_bloc.dart';

abstract class ExpenseTrackerEvent {}

class OnUpdateTitle extends ExpenseTrackerEvent {
  final String title;
  OnUpdateTitle(this.title);
}

class OnUpdateDescrip extends ExpenseTrackerEvent {
  final String descrip;
  OnUpdateDescrip(this.descrip);
}

class OnUpdateAmount extends ExpenseTrackerEvent {
  final int amount;
  OnUpdateAmount(this.amount);
}

class OnUpdateDate extends ExpenseTrackerEvent {
  final String date;
  OnUpdateDate(this.date);
}

class OnSubmit extends ExpenseTrackerEvent {}
