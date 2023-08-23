import 'package:flutter/material.dart';
// import 'package:flutterassignment3/PopUpScreens/Settings.dart';
import 'package:flutterassignment3/Screens/Calls.dart';
import 'package:flutterassignment3/Screens/Chats.dart';
import 'package:flutterassignment3/Screens/Groups.dart';
import 'package:flutterassignment3/Screens/Status.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with SingleTickerProviderStateMixin {

  TabController? _tabController; 

  final List<Tab> topTabs = <Tab>[
    Tab(
      icon: Icon(Icons.groups),
    ),
    Tab(
      child: Text("Chats"),
    ),
    Tab(
      child: Text("Status"),
    ),
    Tab(
      child: Text("Calls"),
    ),
  ];

  @override
  void initState() {
    _tabController = TabController(
      length: 4,
      vsync: this,
      initialIndex: 1,
    )..addListener(() {
        setState(() {});
      });

    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        initialIndex: 1,
        child: Scaffold(

          floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
          floatingActionButton: FloatingActionButton(
            onPressed: (){},
                child: Icon(Icons.chat),
                backgroundColor: Color(0xFF00a884),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50))),
            ),

            appBar: AppBar(
              title: Text("WhatsApp"),
              actions: [
                IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt_outlined)),
                IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                PopupMenuButton(
                  onSelected: (value) {
                    if (value == 1) {
                    Navigator.pushNamed(
                      context,
                      'ng',
                    );
                  }
                  if (value == 2) {
                    Navigator.pushNamed(
                      context,
                      'nb',
                    );
                  }
                  if (value == 3) {
                    Navigator.pushNamed(
                      context,
                      'ld',
                    );
                  }
                  if (value == 4) {
                    Navigator.pushNamed(
                      context,
                      'stm',
                    );
                  }
                  if (value == 5) {
                    Navigator.pushNamed(
                      context,
                      'setting',
                    );
                  }
                  },
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      child: Text("New Group"),
                      value: 1,
                      ),
                    PopupMenuItem(
                      child: Text("New Broadcast"),
                      value: 2,
                      ),
                    PopupMenuItem(
                      child: Text("Linked Devices"),
                      value: 3,
                      ),
                    PopupMenuItem(
                      child: Text("Starred messages"),
                      value: 4,
                      ),
                    PopupMenuItem(
                      value: 5,
                      child: Text("Settings"),
                      // onTap: () {
                      //   Navigator.of(context).push(MaterialPageRoute(builder: (context) => Settings(),));
                      // },
                    ),
                  ],
                )
              ],
              bottom: TabBar(
                tabs: topTabs,
                controller: _tabController,
                indicatorColor: Colors.white,
              ),
            ),
            body: TabBarView(
              controller: _tabController,
              children: [
                Groups(),
                Chats(),
                Status(),
                Calls(),
              ],
            )),
      );
  }
}