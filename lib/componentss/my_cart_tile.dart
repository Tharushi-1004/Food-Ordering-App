import 'package:flutter/material.dart';
import 'package:mobileapp/componentss/my_quantity_selector.dart';
import 'package:mobileapp/models/cart_item.dart';
import 'package:mobileapp/models/restaurant.dart';
import 'package:provider/provider.dart';

class MyCartTile extends StatelessWidget {
  final CartItem cartItem;
  
  const MyCartTile({super.key,required this.cartItem});

  @override
  Widget build(BuildContext context) {
    return  Consumer<Restaurant>(builder:(context,restaurant,child)=>Container(
      child:Column(
        children:[
          Row(
            children:[
              //food image
              ClipRRect(
                borderRadius:BorderRadius.circular(8),
                child: Image.asset(
                  cartItem.food.imagePath,
                  
                  height:100,
                  width:100,
                  ),
              ),

        const SizedBox(width:10),
              //name and price
           Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Food name
                    Text(
                      cartItem.food.name,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),

                    // Food price
                    Text(
                      "\$${cartItem.food.price.toStringAsFixed(2)}",
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
              


              //food price

            ],),

              //increment or decrement quantity
              MyQuantitySelector

            ],
            ),
            //addons

        ],
    ),
    ),
    );
  }
}

