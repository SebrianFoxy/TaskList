part of '../ui.dart';

class AddTaskButton extends StatelessWidget {
  final VoidCallback? onPressed;
  const AddTaskButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.add),
      iconSize: 40,
      style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.green)),
      onPressed: onPressed,
    );
  }
}
