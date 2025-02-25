import 'package:flutter/material.dart';
import 'package:nov_training_session/flutter/simple_list_page.dart';

class TopTabBarPage extends StatelessWidget {
  const TopTabBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TopTabBar",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
      ),
      body: DefaultTabController(
          length: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TabBar(
                  indicatorColor: Colors.green,
                  dividerColor: Colors.red,
                  dividerHeight: 2,
                  labelColor: Colors.red,
                  labelStyle: const TextStyle(
                      fontSize: 22, fontWeight: FontWeight.w600),
                  labelPadding: const EdgeInsets.all(4),
                  unselectedLabelColor: Colors.grey,
                  unselectedLabelStyle: const TextStyle(
                      fontSize: 22, fontWeight: FontWeight.w600),
                  indicator: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.green)),
                  splashFactory: NoSplash.splashFactory,
                  tabs: const [
                    Tab(
                      icon: Icon(Icons.home, size: 22),
                      text: "Home",
                    ),
                    Tab(
                      icon: Icon(Icons.list, size: 22),
                      text: "Simple List",
                    )
                  ]),
              const Expanded(
                child: TabBarView(children: [
                  Center(
                    child: Text("Home Tab",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 22,
                            color: Colors.green)),
                  ),
                  SimpleListPage(),
                ]),
              )
            ],
          )),
    );
  }
}
