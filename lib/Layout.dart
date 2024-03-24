import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
  final Widget child;
  final List<String> titles;

  const Layout({super.key, required this.titles, required this.child});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              bottom: TabBar(
                dividerColor: const Color(0x1F000000),
                unselectedLabelColor: const Color(0x8C000000),
                indicatorColor: const Color(0xFF068441),
                indicatorSize: TabBarIndicatorSize.tab,
                labelColor: Colors.black,
                tabs: [for (var tabText in titles) Tab(text: tabText)],
              ),
              toolbarHeight: 256,
              title: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Image(
                              image: AssetImage('assets/exit_screen.png'),
                              width: 24,
                              height: 24)),
                      IconButton(
                          onPressed: () {},
                          icon: const Image(
                              image: AssetImage('assets/exit_account.png'),
                              width: 24,
                              height: 24))
                    ],
                  ),
                  const Column(
                    children: [
                      Image(
                          image: AssetImage('assets/photo.png'),
                          width: 110,
                          height: 110),
                      SizedBox(
                        height: 36,
                      ),
                      Text(
                        "Екатерина",
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.black,
                          fontSize: 24,
                          fontFamily: 'SFProText',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            body: child),
      ),
    );
  }
}
