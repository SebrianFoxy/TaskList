part of '../ui.dart';

class TaskCard extends StatelessWidget {
  String? taskDescription;
  String? firstTime;
  int? id;
  bool? stateTask;
  void Function()? onPressedChangeState;
  void Function()? onPressedDeleteTask;

  TaskCard({super.key, this.onPressedDeleteTask, this.onPressedChangeState, this.id, this.stateTask, this.taskDescription, this.firstTime});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: Stack(
        children: [
          Card(
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Column(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Text(
                      taskDescription.toString(),
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Divider(thickness: 2),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.timelapse,
                              color: Colors.blue,
                              size: 24,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Text(
                                firstTime.toString(),
                                style: const TextStyle(fontSize: 18),
                              ),
                            ),
                          ],
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: stateTask! ? CupertinoColors.activeBlue : Colors.red,
                          ),
                          onPressed: onPressedChangeState,
                          child: Text(
                            stateTask! ? 'В работе' : 'Выполнено',
                            style: const TextStyle(color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: -7,
            right: -5,
            child: IconButton(onPressed: () {
              AwesomeDialog(
                context: context,
                dialogType: DialogType.warning,
                animType: AnimType.topSlide,
                showCloseIcon: true,
                title: 'Внимания!',
                desc: 'Вы уверены, что хотите удалить данную задачу?',
                btnCancelOnPress: onPressedDeleteTask,
                btnOkOnPress: () {},
                btnCancelText: 'Удалить',
                btnOkText: 'Отмена',
              ).show();
            },icon: const Icon(Icons.close), color: Colors.red),
          ),
        ],
      ),
    );
  }
}
