part of '../ui.dart';

class TimeInput extends StatefulWidget {
  final TextEditingController firstTimeController;
  final TextEditingController secondTimeController;

  TimeInput({
    super.key,
    required this.firstTimeController,
    required this.secondTimeController,
  });

  @override
  State<TimeInput> createState() => _TimeInputState();
}

class _TimeInputState extends State<TimeInput> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: widget.firstTimeController,
          validator: (value) => value!.isEmpty ? 'Введите время начала':null,
          decoration: const InputDecoration(
            labelText: 'Время начала',
            filled: true,
            prefixIcon: Icon(Icons.more_time),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none
            ),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue)
            ),
          ),
          readOnly: true,
          onTap: () {
            _selectFirstTime();
          },
        ),
        const SizedBox(height: 10),
        TextFormField(
          controller: widget.secondTimeController,
          validator: (value) => value!.isEmpty ? 'Введите время конца':null,
          decoration: const InputDecoration(
            labelText: 'Время конца',
            filled: true,
            prefixIcon: Icon(Icons.more_time),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none
            ),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue)
            ),
          ),
          readOnly: true,
          onTap: () {
            _selectSecondTime();
          },
        ),
      ],
    );
  }

  Future<void> _selectFirstTime() async {
    TimeOfDay? _firstTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
      initialEntryMode: TimePickerEntryMode.dial,
      helpText: 'Выберите время',
      confirmText: 'Окей',
      cancelText: 'Отмена',
    );
    if (_firstTime != null) {
      setState(() {
        String formattedHour = _firstTime.hour.toString().padLeft(2, '0');
        String formattedMinute = _firstTime.minute.toString().padLeft(2, '0');
        widget.firstTimeController.text = '$formattedHour:$formattedMinute';
      });
    }
  }

  Future<void> _selectSecondTime() async {
    TimeOfDay? _secondTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
      initialEntryMode: TimePickerEntryMode.dial,
      helpText: 'Выберите время',
      confirmText: 'Окей',
      cancelText: 'Отмена',
    );
    if (_secondTime != null) {
      setState(() {
        setState(() {
          String formattedHour = _secondTime.hour.toString().padLeft(2, '0');
          String formattedMinute = _secondTime.minute.toString().padLeft(2, '0');
          widget.secondTimeController.text = '$formattedHour:$formattedMinute';
        });
      });
    }
  }

}
