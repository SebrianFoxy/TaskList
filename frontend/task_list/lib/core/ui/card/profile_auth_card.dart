part of '../ui.dart';

class ProfileAuthCard extends StatelessWidget {
  const ProfileAuthCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileBloc, ProfileState>(
      listener: (context, state) {
        state.maybeWhen(
          error: (message) {
            Fluttertoast.showToast(
              msg: message,
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.BOTTOM,
              backgroundColor: Colors.grey[800],
              textColor: Colors.white,
              fontSize: 16.0,
            );
          },
          orElse: () {}
        );
      },
      builder: (context, state) {
        return const SafeArea(
          child: SubscribeCard(),
        );
      },
    );
  }
}
