part of '../ui.dart';

class CalendarInput extends StatefulWidget {
  final TextEditingController dateController;

  CalendarInput({
    super.key,
    required this.dateController,
  });

  @override
  State<CalendarInput> createState() => _CalendarInputState();
}

class _CalendarInputState extends State<CalendarInput> {


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.dateController,
      validator: (value) => value!.isEmpty ? 'Введите дату':null,
      decoration: const InputDecoration(
        labelText: 'Дата',
        filled: true,
        prefixIcon: Icon(Icons.calendar_today_outlined),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue)
        ),
      ),
      readOnly: true,
      onTap: () {
        _selectDate();
      },
    );
  }

  Future<void> _selectDate() async {
    DateTime? _picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2100),
      helpText: 'Выберите дату',
      cancelText: 'Отмена',
      confirmText: 'Окей',
    );
    if (_picked != null) {
      setState(() {
        widget.dateController.text = _picked.toString().split(' ')[0];
      });
    }
  }

}
