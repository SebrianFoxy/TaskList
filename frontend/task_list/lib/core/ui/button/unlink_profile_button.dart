part of '../ui.dart';

class UnLinkProfileButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const UnLinkProfileButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onPressed,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        child: const Icon(Icons.link_off_sharp, size: 26),
      ),
    );
  }
}
