part of 'todo_cubit.dart';

@Freezed(map: FreezedMapOptions.none, when: FreezedWhenOptions.none)
class TodoState with _$TodoState {
  static final FocusNode titleFocus = FocusNode();
  static final FocusNode descriptionFocus = FocusNode();

  const factory TodoState({
    @Default(false) bool validate,
    @Default(false) bool isSaving,
    @Default(false) bool isFetching,
    required DateTime currentDate,
    required Todo todo,
    @Default(KtList.empty()) KtList<Shift> shifts,
    @Default(KtList.empty()) KtList<Todo> todos,
    @Default(None()) Option<FirestoreResponse?> status,
  }) = _TodoState;

  const TodoState._();

  factory TodoState.initial() => TodoState(currentDate: localTime, todo: Todo.blank());
}
