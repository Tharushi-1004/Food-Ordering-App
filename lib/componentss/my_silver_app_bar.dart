import 'package:flutter/material.dart';
import 'package:mobileapp/pages/cart_page.dart';

class MySilverAppBar extends StatelessWidget {
  final Widget child;
  final Widget title;

  const MySilverAppBar({
    super.key,
    required this.child,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 340,
      collapsedHeight: 120,
      floating: false,
      pinned: true,
      actions: [
        // Cart button
        IconButton(
          onPressed: () {
            // Navigate to the Cart page
            if (Navigator.canPop(context)) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CartPage(),
                ),
              );
            } else {
              debugPrint("Cannot navigate to CartPage; no navigator context.");
            }
          },
          icon: const Icon(Icons.shopping_cart),
        ),
      ],
      backgroundColor: Theme.of(context).colorScheme.surface,
      foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: const Text("Sunset Diner"),
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.only(bottom: 50.0),
          child: child,
        ),
        title: title,
        centerTitle: true,
        titlePadding: const EdgeInsets.only(left: 0, right: 0, top: 0),
        expandedTitleScale: 1,
      ),
    );
  }
}



/*import'package:flutter/material.dart';
import 'package:mobileapp/pages/cart_page.dart';

class MySilverAppBar extends StatelessWidget {
  final Widget child;
  final Widget title;



  const MySilverAppBar({
    super.key,
    required this.child,
    required this.title,
    }
    );

  @override
  Widget build(BuildContext context) {
    return  SliverAppBar(
      expandedHeight: 340,
      collapsedHeight: 120,
      floating:false,
      pinned:true,
      actions:[
        //cart button
        IconButton(
          onPressed: (){

            //cart page
            Navigator.push(context,MaterialPageRoute( builder:(context)=> const CartPage(),
                ),
                );
          },
          if (Navigator.canPop(context)) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CartPage(),
                ),
              );
            } else {
              debugPrint("Cannot navigate to CartPage; no navigator context.");
            }
          },
           icon:const Icon(Icons.shopping_cart),
           ),

      ],
      backgroundColor: Theme.of(context).colorScheme.surface,
      foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      title:Text("Sunset Diner"),
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.only(bottom:50.0),
          child: child,
        ),
        title:title,
        centerTitle:true,
        titlePadding:const EdgeInsets.only(left:0,right:0,top:0),
        expandedTitleScale: 1,
      ),
    );
  }
}*/