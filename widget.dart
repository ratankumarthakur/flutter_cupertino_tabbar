import 'package:flutter/cupertino.dart';                             //watch here

class widget1 extends StatefulWidget {
  const widget1({super.key});

  @override
  State<widget1> createState() => _widget1State();
}

class _widget1State extends State<widget1> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: const [
            BottomNavigationBarItem(
                icon:Icon(CupertinoIcons.home),
                label:"Home" ),
            BottomNavigationBarItem(
                icon:Icon(CupertinoIcons.settings),
                label:"Settings" ),
          ],
        ),
        tabBuilder:(BuildContext context,int index){
          return CupertinoTabView(
            builder: (BuildContext context){
              return Center(
                child: Icon(
                  index==0? CupertinoIcons.home:CupertinoIcons.settings,
                  size: 80,
                ),
              );
            },
          );
        });
  }
}
