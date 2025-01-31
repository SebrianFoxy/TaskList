part of '../ui.dart';

class ProfileAuthCard extends StatelessWidget {
  const ProfileAuthCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
        child: Card(
          elevation: 8,
          surfaceTintColor: Colors.white,
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
                child: const Padding(
                  padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
                  child: Row(
                    children: [
                      Text('Оповещения на telegram: ', style: TextStyle(
                          fontSize: 18
                      ),),
                      Icon(Icons.check, color: Colors.green, size: 26,),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child: const Padding(
                  padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
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
      ),
    );
  }
}
