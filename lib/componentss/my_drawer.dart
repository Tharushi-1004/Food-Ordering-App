// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:mobileapp/componentss/my_drawer_tile.dart';

import 'package:mobileapp/pages/login_page.dart';
import 'package:mobileapp/pages/settings_page.dart';
import 'package:mobileapp/services/auth/auth_service.dart';

/*class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});
  void logout(){
    final authService =  AuthService();
    authService.signOut();

  }*/
class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  void logout(BuildContext context) async {
    final authService = AuthService();

    try {
      await authService.signOut(); // Sign out the user
      // After logout, navigate to the login page
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginPage()), // Change this to your home page if needed
      );
    } catch (e) {
      // Handle any errors that may occur during logout
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("Error signing out: $e"),
        ),
      );
    }
  }


  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        children:[
          //app logo
          Padding(
            padding:const EdgeInsets.only(top:100.0),
            child: Icon(
            Icons.lock_open_rounded,
            size:80,
            color:Theme.of(context).colorScheme.inversePrimary,
          ),
          ),
          

          Padding(
          padding: const EdgeInsets.all(25.0),
          child:Divider(
          color:Theme.of(context).colorScheme.secondary,
          ),
          ),
          //homelist tile
          MyDrawerTile(
            text:"H O M E",
            icon:Icons.home,
            onTap:()=>Navigator.pop(context),
          ),

          //settings list tile
        MyDrawerTile(
            text:"S E T T I N G S",
            icon:Icons.settings,
            onTap:(){
              Navigator.pop(context);
              Navigator.push(context,MaterialPageRoute(builder: (context)=>const SettingsPage(),
              ),
              );

            },
          ),
        const Spacer(),

          //logout list tile
        MyDrawerTile(
            text:"L O G O U T",
            icon:Icons.logout,
            onTap:(){
              logout(context);
              //Navigator.pop(context);
            },
          ),
        const SizedBox(height:25),

        ],
      ),
    );
  }
}