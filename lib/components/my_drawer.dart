import 'package:flutter/material.dart';
import 'package:lastmusicapp/pages/pagepricipale.dart';


class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        children: [
          //logo
        DrawerHeader(
  child: Center(
    child: Image.asset(
      'assets/icon/icon.png',
      
     
    ),
  ),
),

          
            //HOME title
          Padding(
            padding: const EdgeInsets.only(left: 25.0, top: 0),
            
            child: ListTile(
              title: const Text("H O M E"),
              leading: const Icon(Icons.home),
              onTap: () {
                //pop drawer
                Navigator.pop(context);

                //navigqte to seetings page
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyWidget(),
                  ),
                );
              },
            ),
          ),

          //home title
          Padding(
            padding: const EdgeInsets.only(left: 25.0, top: 25),
            child: ListTile(
             // title: const Text("H O M E"),
             // leading:const Icon(Icons.home),
              onTap: () => Navigator.pop(context),
            ),
          ),

        
        ],
      ),
    );
  }
}
