part of '../ui.dart';

class DialogDeleteTask extends StatelessWidget {
  int? id;
  DialogDeleteTask({super.key, this.id});

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: () {
      AwesomeDialog(
        context: context,
        dialogType: DialogType.warning,
        animType: AnimType.topSlide,
        showCloseIcon: true,
        title: 'Внимания!',
        desc: 'Вы уверены, что хотите удалить данную задачу?',
        btnCancelOnPress: () {
          context.read<TaskListBloc>().add(TaskListEvent.deleteTask(id: id!.toInt()));
        },
        btnOkOnPress: () {},
        btnCancelText: 'Удалить',
        btnOkText: 'Отмена',
      ).show();
    }, icon: const Icon(Icons.close), color: Colors.red,);
  }
}
