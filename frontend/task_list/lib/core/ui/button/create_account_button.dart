part of '../ui.dart';

class CreateAccountButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String? nameButton;

  const CreateAccountButton({super.key, this.onPressed, this.nameButton});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: Colors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
        ),
        child: Text('$nameButton', style: const TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,),
        )
    );
  }
}
