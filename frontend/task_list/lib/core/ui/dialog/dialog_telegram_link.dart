part of '../ui.dart';

class DialogTelegramLink extends StatefulWidget {
  const DialogTelegramLink({super.key});

  @override
  State<DialogTelegramLink> createState() => _DialogTelegramLinkState();
}

class _DialogTelegramLinkState extends State<DialogTelegramLink> {

  @override
  Widget build(BuildContext context) {
    return LinkProfileButton(onPressed: () {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return BlocListener<TelegramCodeBloc, TelegramCodeState>(
            listener: (context, state) {
              if (state is TelegramCodeButtonActive && state.isVerified) {
                Navigator.pop(context);
              }
            },
            child: const MultiPageDialog(),
          );
        },
      );
    },);
  }
}

class MultiPageDialog extends StatefulWidget {
  const MultiPageDialog({super.key});

  @override
  _MultiPageDialogState createState() => _MultiPageDialogState();
}

class _MultiPageDialogState extends State<MultiPageDialog> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      elevation: 10,
      child: SizedBox(
        height: 350,
        width: 350,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(8.0),
              decoration: const BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16.0),
                  topRight: Radius.circular(16.0),
                ),
              ),
              child: const Center(
                child: Text(
                  'Инструкция',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: (int page) {
                  setState(() {
                    _currentPage = page;
                  });
                },
                children:  [
                  const SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            leading: Icon(Icons.looks_one, color: Colors.blueAccent),
                            title: Text(
                              'Получите код на следующей странице.',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                          Divider(),
                          ListTile(
                            leading: Icon(Icons.looks_two, color: Colors.blueAccent),
                            title: Text(
                              'Перейдите в Telegram-бота.',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                          Divider(),
                          ListTile(
                            leading: Icon(Icons.looks_3, color: Colors.blueAccent),
                            title: Text(
                              'Нажмите кнопку "Связать аккаунт" и введите код.',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const ListTile(
                            leading: Icon(Icons.looks_one, color:  Colors.blueAccent,),
                            title: TelegramCodeButton(),
                          ),
                          const Divider(),
                          ListTile(
                            leading: const Icon(Icons.looks_two, color: Colors.blueAccent),
                            title: ElevatedButton(
                              onPressed: () {
                                context.read<TelegramCodeBloc>().add(const TelegramCodeEvent.redirectToTelegramBot());
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blueAccent,
                                foregroundColor: Colors.white,
                                padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ), child: const Text('Перейти в Telegram-бота'),
                            ),
                          ),
                          const Divider(),
                          const ListTile(
                              leading: Icon(Icons.looks_3, color: Colors.blueAccent),
                              title: Text('Готово :)')
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16.0),
                  bottomRight: Radius.circular(16.0),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Visibility(
                    visible: _currentPage > 0,
                    child: Row(
                      children: [
                        TextButton(
                          onPressed: () {
                            _pageController.previousPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                            );
                          },
                          child: const Text(
                            'Назад',
                            style: TextStyle(color: Colors.blueAccent, fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (_currentPage == 0)
                    Visibility(
                      visible: _currentPage < 1,
                      child: TextButton(
                        onPressed: () {
                          _pageController.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        },
                        child: const Text(
                          'Вперед',
                          style: TextStyle(color: Colors.blueAccent, fontSize: 16),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
