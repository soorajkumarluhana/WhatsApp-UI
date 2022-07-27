import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("WhatsApp"),
          bottom: const TabBar(
            tabs: [
              Tab(child: Icon(Icons.camera_alt)),
              Tab(child: Text("Chats")),
              Tab(child: Text("Status")),
              Tab(child: Text("Call"))
            ],
          ),
        actions:  [
          Icon(Icons.search),
          SizedBox(width: 10,),
         PopupMenuButton(
          icon: Icon(Icons.more_horiz_outlined),
          itemBuilder: (context) => [
            PopupMenuItem(
              value: 1,
              child: Text("New Group")),
              PopupMenuItem(
              value: 2,
              child: Text("New Broadcast")),
               PopupMenuItem(
              value: 3,
              child: Text("Setting")),
                
          ]),
           SizedBox(width: 10,),
          
        ],
        ),
        body: TabBarView(children: [
          Text("Camera"),
           ListView.builder(
           itemCount: 100,
           itemBuilder: (context, index) {
           return ListTile(
           leading: CircleAvatar(
            backgroundImage: NetworkImage("https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                  ),
           title: Text("Sooraj Kumar"), 
            subtitle: Text("Hello, How are you"),
            trailing: Text("6:30 PM"),
                    );
                   
                  }),
          Text("Status"),
           ListView.builder(
           itemCount: 100,
           itemBuilder: (context, index) {
           return ListTile(
           leading: CircleAvatar(
            backgroundImage: NetworkImage("https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                  ),
           title: Text("Sooraj Kumar"), 
            subtitle: Text("6:30 PM"),
            trailing: Icon(index/2 == 0 ? Icons.phone : Icons.video_call), 
                    );
                   
                  }),
        ]),
      ),
    );
  }
}
