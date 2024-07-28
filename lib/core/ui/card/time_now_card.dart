part of '../ui.dart';


class TimeNow extends StatelessWidget {
  const TimeNow({super.key});

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    String formattedDate = DateFormat('d MMMM y', 'ru_RU').format(now);

    return Text('$formattedDate года', style: const TextStyle(
        fontSize: 20, fontWeight: FontWeight.bold));
  }
}
