library todo_list_screen.dart;

import 'package:auto_route/auto_route.dart';
import 'package:dextercare/core/presentation/index.dart';
import 'package:dextercare/features/auth/presentation/index.dart';
import 'package:dextercare/features/todo/domain/entities/index.dart';
import 'package:dextercare/features/todo/presentation/managers/cubit/todo_cubit.dart';
import 'package:dextercare/managers/locator/locator.dart';
import 'package:dextercare/managers/navigation/app_router.dart';
import 'package:dextercare/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:kt_dart/collection.dart';

/// A stateful widget that renders TodoListScreen.
class TodoListScreen extends StatefulWidget with AutoRouteWrapper {
  const TodoListScreen({super.key});

  @override
  TodoListScreenState createState() => TodoListScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<TodoCubit>(),
      child: BlocListener<TodoCubit, TodoState>(
        listenWhen: (p, c) => p.status.getOrNull != c.status.getOrNull,
        listener: (c, s) => s.status.fold(
          () {},
          (it) => it?.type.when(
            error: () => PopupDialog.error(message: it.message, show: it.message.isNotEmpty).render(),
            success: () => PopupDialog.success(message: it.message, show: it.message.isNotEmpty).render(),
          ),
        ),
        child: this,
      ),
    );
  }
}

class TodoListScreenState extends State<TodoListScreen> {
  static const _itemVerticalPadding = 10.0;

  late TodoCubit _cubit;
  late ScrollController _dateScrollController;
  late ScrollController _scrollController;

  List<DateTime> days = [];

  @override
  void initState() {
    _scrollController = ScrollController();
    _dateScrollController = ScrollController();
    _cubit = context.read<TodoCubit>();

    _cubit.watchTodos();

    super.initState();

    compute(_populateDates, null).then((value) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        final _days = value;

        Future.delayed(const Duration(milliseconds: 600), () {
          final indexOfToday = _days.indexWhere((e) {
            return e.isAtSameMomentAs(
              DateTime(
                _cubit.state.currentDate.year,
                _cubit.state.currentDate.month,
                _cubit.state.currentDate.day,
              ),
            );
          });
          _animateToIndex(indexOfToday);

          setState(() {});
        });

        setState(() => days = _days);
      });
    });
  }

  double get _itemPadding => 0.037.w;
  double get _itemWidth => 0.13.w;

  void _animateToIndex(int index) {
    if (_dateScrollController.hasClients)
      _dateScrollController.animateTo(
        ((index * _itemWidth) + (index * _itemPadding)),
        duration: const Duration(seconds: 1),
        curve: Curves.fastOutSlowIn,
      );
  }

  static List<DateTime> _populateDates(Map<String, dynamic>? args) {
    final start = DateTime(2022, 1, 1);
    final end = DateTime(2300, 12, 30);
    final days = <DateTime>[];

    DateTime tmp = DateTime(start.year, start.month, start.day, 12);

    while (DateTime(tmp.year, tmp.month, tmp.day) != end) {
      days.add(DateTime(tmp.year, tmp.month, tmp.day));
      tmp = tmp.add(const Duration(days: 1));
    }

    return days;
  }

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      backgroundColor: Palette.primaryColor.shade700,
      body: Stack(
        children: [
          Positioned.fill(
            child: NestedScrollView(
              controller: _scrollController,
              floatHeaderSlivers: false,
              headerSliverBuilder: (_, __) => [
                SliverAppBar(
                  backgroundColor: Palette.primaryColor.shade700,
                  leading: BlocSelector<AuthWatcherCubit, AuthWatcherState, bool>(
                    selector: (s) => s.isLoggingOut,
                    builder: (c, isLoading) => AdaptiveToolbar.materialToolbarAction(
                      icon: isLoading
                          ? const CircularProgressBar.adaptive(
                              width: 24,
                              height: 24,
                              strokeWidth: 3,
                              color: Palette.primaryColor,
                              colorDark: Palette.primaryColor,
                            )
                          : const RotatedBox(
                              quarterTurns: 2,
                              child: Icon(Icons.logout, color: Palette.destructiveRed),
                            ),
                      size: const Size.square(40),
                      alignment: Alignment.center,
                      backgroundColor: Palette.grey6,
                      tooltip: 'Log Out',
                      label: 'Log Out',
                      onPressed: isLoading ? null : context.read<AuthWatcherCubit>().signOut,
                    ),
                  ),
                  actions: [
                    if (Utils.platform.isCupertino)
                      Padding(
                        padding: EdgeInsets.only(right: sidePadding),
                        child: AdaptiveToolbar.cupertinoToolbarAction(
                          icon: const Icon(CupertinoIcons.add, color: Colors.black87, size: 20),
                          size: const Size.square(30),
                          alignment: Alignment.center,
                          backgroundColor: Utils.resolveColor(Colors.white, dark: Colors.white70),
                          tooltip: 'Add Todo',
                          label: 'Add Todo',
                          onPressed: () => navigator.navigate(CreateTodoRoute(days: days)),
                        ),
                      ),
                  ],
                ),
                //
                SliverList(
                  delegate: SliverChildListDelegate.fixed([
                    0.012.vsh,
                    //
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: sidePadding),
                      child: AdaptiveText(
                        DateFormat('MMMM, yyyy').format(localTime),
                        maxLines: 1,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                        textAlign: TextAlign.left,
                        textColor: Colors.white,
                      ),
                    ),
                    //
                    0.025.vsh,
                    //
                    ConstrainedBox(
                      constraints: BoxConstraints(maxHeight: _itemWidth + _itemVerticalPadding),
                      child: ListView.custom(
                        controller: _dateScrollController,
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.symmetric(horizontal: sidePadding),
                        physics: Utils.physics,
                        semanticChildCount: days.length,
                        childrenDelegate: SliverChildBuilderDelegate(
                          (c, i) => Padding(
                            padding: EdgeInsets.only(right: _itemPadding),
                            child: Center(
                              child: BlocSelector<TodoCubit, TodoState, DateTime>(
                                selector: (s) => s.currentDate,
                                builder: (_, selected) {
                                  final isSelected =
                                      days[i].day == selected.day && days[i].month == selected.month && days[i].year == selected.year;

                                  return Stack(
                                    children: [
                                      Material(
                                        color: isSelected ? Colors.white : Palette.primaryColor,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: 20.br,
                                          side: isSelected ? const BorderSide(color: Colors.white, width: 1) : BorderSide.none,
                                        ),
                                        child: AdaptiveInkWell(
                                          onTap: () {
                                            // _cubit.getTasks(days[i]);
                                            _cubit.watchTodos(days[i]);
                                            _animateToIndex(i);
                                          },
                                          borderRadius: 20.br,
                                          containedInkWell: true,
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(vertical: _itemVerticalPadding),
                                            child: SizedBox.fromSize(
                                              size: Size.fromWidth(_itemWidth),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  AdaptiveText(
                                                    DateFormat.E().format(days[i]).toUpperCase(),
                                                    maxLines: 1,
                                                    fontSize: 12.sp,
                                                    textAlign: TextAlign.center,
                                                    fontWeight: FontWeight.w300,
                                                    textColor: isSelected ? Palette.primaryColor : Colors.white,
                                                    textColorDark: isSelected ? Palette.primaryColor : Colors.white,
                                                  ),
                                                  //
                                                  AdaptiveText(
                                                    '${days[i].day}',
                                                    maxLines: 1,
                                                    fontSize: 17.sp,
                                                    textAlign: TextAlign.center,
                                                    fontWeight: FontWeight.w400,
                                                    textColor: isSelected ? Palette.primaryColor : Colors.white,
                                                    textColorDark: isSelected ? Palette.primaryColor : Colors.white,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              ),
                            ),
                          ),
                          childCount: days.length,
                        ),
                      ),
                    ),
                    //
                    0.035.vsh,
                  ]),
                ),
              ],
              body: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Material(
                      color: Colors.white,
                      borderRadius: const BorderRadius.only(topLeft: Radius.circular(32), topRight: Radius.circular(32)),
                      child: CustomScrollView(
                        slivers: [
                          SliverPadding(
                            padding: EdgeInsets.symmetric(horizontal: sidePadding, vertical: 0.03.h),
                            sliver: BlocSelector<TodoCubit, TodoState, DateTime>(
                              selector: (s) => s.currentDate,
                              builder: (c, date) {
                                final isToday = date.day == localTime.day && date.month == localTime.month && date.year == localTime.year;

                                return SliverToBoxAdapter(
                                  child: AdaptiveText(
                                    isToday ? 'Today\'s Tasks' : 'Tasks',
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                );
                              },
                            ),
                          ),
                          //
                          SliverPadding(
                            padding: EdgeInsets.symmetric(horizontal: sidePadding),
                            sliver: BlocSelector<TodoCubit, TodoState, KtList<Todo>>(
                              selector: (s) => s.todos,
                              builder: (c, todos) => SliverList(
                                delegate: SliverChildBuilderDelegate(
                                  (_, i) => Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Material(
                                        color: todos.get(i).color.getOrNull?.withOpacity(0.35),
                                        borderRadius: 12.br,
                                        child: AdaptiveInkWell(
                                          onTap: () {},
                                          borderRadius: 12.br,
                                          containedInkWell: true,
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(horizontal: 0.04.w, vertical: 0.02.h).copyWith(top: 0, right: 0),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    AdaptiveText('${todos.get(i).shift.name}'),
                                                    //
                                                    CheckboxTheme(
                                                      data: Theme.of(context).checkboxTheme.copyWith(
                                                            checkColor:
                                                                MaterialStateProperty.all(todos.get(i).color.getOrNull ?? Colors.white),
                                                            fillColor: MaterialStateProperty.all(
                                                              todos.get(i).color.getOrNull != null
                                                                  ? todos.get(i).color.getOrNull?.invertLuminance
                                                                  : Palette.primary,
                                                            ),
                                                            shape: const CircleBorder(),
                                                            splashRadius: 20,
                                                          ),
                                                      child: Checkbox(
                                                        value: todos.get(i).isDone,
                                                        onChanged: (_) => _cubit.markAsDone(todos.get(i)),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                //
                                                0.01.vsh,
                                                //
                                                Padding(
                                                  padding: EdgeInsets.only(right: 0.02.h),
                                                  child: AdaptiveText(
                                                    '${todos.get(i).title}',
                                                    fontSize: 18.sp,
                                                    height: 1.7,
                                                    fontWeight: FontWeight.w600,
                                                    textAlign: TextAlign.left,
                                                  ),
                                                ),
                                                //
                                                Padding(
                                                  padding: EdgeInsets.only(right: 0.02.h),
                                                  child: AdaptiveText(
                                                    '${todos.get(i).description}',
                                                    fontSize: 16.sp,
                                                    fontWeight: FontWeight.normal,
                                                    textAlign: TextAlign.left,
                                                  ),
                                                ),
                                                //
                                                0.01.vsh,
                                                //
                                                Padding(
                                                  padding: EdgeInsets.only(right: 0.02.h),
                                                  child: Align(
                                                    alignment: Alignment.centerRight,
                                                    child: Material(
                                                      borderRadius: 100.br,
                                                      color: todos.get(i).status.bgColor,
                                                      child: Padding(
                                                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                                        child: AdaptiveText(
                                                          todos.get(i).status.formattedName,
                                                          textColor: todos.get(i).status.bgColor.invertLuminance,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      //
                                      0.02.vsh,
                                    ],
                                  ),
                                  childCount: todos.size,
                                ),
                              ),
                            ),
                          ).sliverSafeBottom,
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          //
          if (!Utils.platform.isCupertino)
            Positioned(
              right: sidePadding,
              bottom: 0.04.h,
              child: SafeArea(
                child: Center(
                  child: ClipRRect(
                    borderRadius: 100.br,
                    child: MyHero(
                      tag: 'create-todo-tag',
                      elevation: 0,
                      borderRadius: 100.br,
                      color: Palette.primaryColor,
                      child: IconButton(
                        onPressed: () => navigator.navigate(CreateTodoRoute(days: days)),
                        color: Palette.onPrimary,
                        padding: const EdgeInsets.all(15),
                        iconSize: 25,
                        icon: const Icon(Icons.add),
                      ),
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
