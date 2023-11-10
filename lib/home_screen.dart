import 'package:whatsapp_ui/app/all_screen.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('WhatsApp'),
          //add tabs
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Text('Chats'),
              ),
              Tab(
                child: Text('Updates'),
              ),
              Tab(
                child: Text('Calls'),
              ),
            ],
          ),
          actions: [
            const Icon(Icons.camera_alt_outlined),
            const SizedBox(
              width: 20,
            ),
            const Icon(Icons.search),

            //popup menu
            PopupMenuButton(
                icon: const Icon(Icons.more_horiz_outlined),
                itemBuilder: (context) => [
                      const PopupMenuItem(
                        value: '1',
                        child: Text('New Group'),
                      ),
                      const PopupMenuItem(
                        value: '2',
                        child: Text('Settings'),
                      ),
                      const PopupMenuItem(
                        value: '3',
                        child: Text('Log Outs'),
                      ),
                    ]),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
        //Tab Bars
        body: TabBarView(
          children: [
            ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=600'),
                    ),
                    title: Text('John Smith'),
                    subtitle: Text('messages send by sender'),
                    trailing: Text('6:30 PM'),
                  );
                }),
            ListView.builder(
                itemCount: 50,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.grey,
                            width: 3,
                          )),
                      child: const CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=600'),
                      ),
                    ),
                    title: const Text('John Smith'),
                    subtitle: const Text('35m ago'),
                  );
                }),
            ListView.builder(
                itemCount: 50,
                itemBuilder: (context, index) {
                  return ListTile(
                      leading: const CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=600'),
                      ),
                      title: const Text('John Smith'),
                      subtitle: Text(index / 2 == 0
                          ? 'you missed audio call'
                          : 'call times is 12:20'),
                      trailing: Icon(
                        index / 2 == 0 ? Icons.phone : Icons.video_call,
                        color: Colors.teal,
                      ));
                }),
          ],
        ),
      ),
    );
  }
}
