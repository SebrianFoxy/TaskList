part of '../ui.dart';

class SubscribeCard extends StatefulWidget {
  const SubscribeCard({super.key});

  @override
  State<SubscribeCard> createState() => _SubscribeCardState();
}

class _SubscribeCardState extends State<SubscribeCard> {
  @override
  void initState() {
    super.initState();
    context.read<ProfileBloc>().add(const ProfileEvent.checkTelegramLink());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        return state.maybeWhen(
            successLoading: (telegramLink, vkLink) {
              return Padding(
                padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
                child: Card(
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: const Padding(
                          padding: EdgeInsets.all(12),
                          child: Text(
                            'Подписки на оповещения:',
                            style: TextStyle(
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
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              const Text('Оповещения на telegram: ', style: TextStyle(
                                  fontSize: 18
                              )),
                              if (telegramLink)...[
                                const Icon(Icons.check, color: Colors.green, size: 26,),
                                const Spacer(),
                                const DialogTelegramUnlink()
                              ] else...[
                                const Icon(Icons.clear, color: Colors.red, size: 26,),
                                const Spacer(),
                                const DialogTelegramLink()
                              ]
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: const Padding(
                          padding: EdgeInsets.only(left: 10, top: 5, bottom: 10),
                          child: Row(
                            children: [
                              Text('Оповещения на VK: ', style: TextStyle(
                                  fontSize: 18
                              ),),
                              Icon(Icons.clear, color: Colors.red, size: 26,),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
            orElse: () {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
        );
      },
    );
  }
}