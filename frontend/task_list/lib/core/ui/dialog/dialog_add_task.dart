part of '../ui.dart';

class DialogAddTask extends StatefulWidget {
  DialogAddTask({super.key});

  @override
  State<DialogAddTask> createState() => _DialogAddTaskState();
}

class _DialogAddTaskState extends State<DialogAddTask> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _taskDescriptionController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _firstTimeController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return AddTaskButton(onPressed: () {
      AwesomeDialog(
        context: context,
        animType: AnimType.scale,
        dialogType: DialogType.noHeader,
        keyboardAware: true,
        onDismissCallback: (type) {
          _taskDescriptionController.clear();
          _firstTimeController.clear();
          _dateController.clear();
        },
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                Text(
                  'Создать задачу',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(
                  height: 10,
                ),
                Material(
                  elevation: 0,
                  color: Colors.blueGrey.withAlpha(40),
                  child: TextFormField(
                    controller: _taskDescriptionController,
                    autofocus: true,
                    keyboardType: TextInputType.multiline,
                    minLines: 2,
                    maxLines: null,
                    validator: (value) => value!.isEmpty ? 'Введите задачу' : null,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Задача',
                      prefixIcon: Icon(Icons.text_fields),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Material(
                  elevation: 0,
                  color: Colors.blueGrey.withAlpha(40),
                  child: CalendarInput(
                      dateController: _dateController
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TimeInput(
                  firstTimeController: _firstTimeController,
                  //secondTimeController: _secondTimeController,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(onPressed: () {
                      if (
                      _firstTimeController.text.isEmpty ||
                          _taskDescriptionController.text.isEmpty ||
                          _dateController.text.isEmpty)
                      {
                        _formKey.currentState!.validate();
                      }
                      else {
                        context.read<TaskListBloc>().add(
                            TaskListEvent.createTask
                              (
                              descriptionTask: _taskDescriptionController.text.toString(),
                              date: _dateController.text.toString(),
                              firstTime: _firstTimeController.text.toString(),
                            )
                        );
                        _firstTimeController.clear();
                        _taskDescriptionController.clear();
                        _dateController.clear();
                        Navigator.pop(context);
                      }
                    }, child: const Text('Создать')),
                    ElevatedButton(onPressed: () {
                      _firstTimeController.clear();
                      _taskDescriptionController.clear();
                      _dateController.clear();
                      Navigator.pop(context);
                    }, child: const Text('Отмена')),
                  ],
                )
              ],
            ),
          ),
        ),
      ).show();
    },
    );
  }
}
