part of '../ui.dart';

class TelegramCodeButton extends StatefulWidget {
  const TelegramCodeButton({super.key});

  @override
  TelegramCodeButtonState createState() => TelegramCodeButtonState();
}

class TelegramCodeButtonState extends State<TelegramCodeButton> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TelegramCodeBloc, TelegramCodeState>(
      builder: (context, state) {
        return state.when(
          active: (_) => ElevatedButton(
            onPressed: () {
              context.read<TelegramCodeBloc>().add(const TelegramCodeEvent.buttonPressed());
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueAccent,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            child: const Text('Получить код'),
          ),
          inactive: (remainingTime, telegramCode) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ElevatedButton(
                onPressed: null,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: Text('Повторная отправка через $remainingTime сек'),
              ),
              if (telegramCode != null)
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Text(
                    'Ваш код: $telegramCode',
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}