part of '../ui.dart';

class LinkProfileButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const LinkProfileButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onPressed,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        child: const Icon(Icons.link, size: 26),
      ),
    );
  }
}
