part of '../ui.dart';

class CalendarCard extends StatefulWidget {
  CalendarCard({super.key});

  @override
  State<CalendarCard> createState() => _CalendarCardState();
}

class _CalendarCardState extends State<CalendarCard> {
  @override
  Widget build(BuildContext context){
    return EasyDateTimeLine(
      initialDate: DateTime.now(),
      headerProps: EasyHeaderProps(
        selectedDateStyle: TextStyle(
          color: context.read<ThemeCubit>().state.brightness == Brightness.dark ? Colors.white : Colors.black,
          fontWeight: FontWeight.bold,
        )
      ),
      locale: 'ru',
      onDateChange: (selectedDate) {
        context.read<CalendarListBloc>().add(CalendarListEvent.fetch(taskThisDate: selectedDate.toString()));
      },
      itemBuilder: (
          BuildContext context,
          DateTime date,
          bool isSelected,
          VoidCallback onTap) {
        return InkResponse(
          onTap: onTap,
          splashFactory: NoSplash.splashFactory,
          child: CircleAvatar(
            backgroundColor: isSelected ? Colors.red : Colors.red.withOpacity(0.3),
            radius: 32.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Text(
                    date.day.toString(),
                    style: TextStyle(
                      color: isSelected ? Colors.white : null,
                    ),
                  ),
                ),
                Flexible(
                  child: Text(
                    EasyDateFormatter.shortDayName(date, "ru"),
                    style: TextStyle(
                      color: isSelected ? Colors.white : null,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}