part of '../ui.dart';

class DialogTelegramUnlink extends StatelessWidget {
  const DialogTelegramUnlink({super.key});

  @override
  Widget build(BuildContext context) {
    return UnLinkProfileButton(
      onPressed: () {
        AwesomeDialog(
          context: context,
          dialogType: DialogType.warning,
          animType: AnimType.topSlide,
          showCloseIcon: true,
          title: 'Внимания!',
          desc: 'Вы уверены, что хотите отвязать аккаунт telegram?',
          btnCancelOnPress: () {
            context.read<ProfileBloc>().add(const ProfileEvent.unlinkTelegram());
          },
          btnOkOnPress: () {},
          btnCancelText: 'Отвязать',
          btnOkText: 'Отмена',
        ).show();
      },
    );
  }
}
