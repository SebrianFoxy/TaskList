part of '../ui.dart';

class MyNavigationBar extends StatefulWidget {
  final int? selectIndex;
  const MyNavigationBar({super.key, this.selectIndex});

  @override
  State<MyNavigationBar> createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  final iconList = <IconData>[
    Icons.home,
    Icons.calendar_month,
    Icons.person,
    Icons.settings,
  ];

  @override
  Widget build(BuildContext context) {
    return AnimatedBottomNavigationBar.builder(
      itemCount: iconList.length,
      tabBuilder: (int index, bool isActive) {
        final color = isActive ? Colors.red : context.read<ThemeCubit>().state.brightness == Brightness.dark ? Colors.white : Colors.black;
        final size = isActive ? 36.0 : 24.0;
        return Icon(
          iconList[index],
          size: size,
          color: color,
        );
      },
      activeIndex: widget.selectIndex ?? 0,
      gapLocation: GapLocation.center,
      notchSmoothness: NotchSmoothness.softEdge,
      backgroundColor: context.read<ThemeCubit>().state.brightness == Brightness.dark ? Colors.black : Colors.white,
      onTap: (index) {
        if (index == 0) {
          context.goNamed(AppRoute.tasks.name);
          context.read<TaskListBloc>().add(const TaskListEvent.fetch());
        }
        else if (index == 1) {
          context.goNamed(AppRoute.calendar.name);
          context.read<CalendarListBloc>().add(const CalendarListEvent.fetch());
        }
        else if (index == 3) {
          context.goNamed(AppRoute.settings.name);
        }
      },
    );
  }
}
