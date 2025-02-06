/*import'package:flutter/material.dart';
import 'package:mobileapp/componentss/my_button.dart';
import 'package:mobileapp/models/food.dart';


class FoodPage extends StatefulWidget {

  final Food food;
  final Map<Addon, bool>selectedAddons={};

   FoodPage({
    super.key,
    required this.food,
    }){
      //initialize selected to be false
      for (Addon addon in food.availableAddons){
        selectedAddons[addon] = false;
      }
    }

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(children:[
      //scafold ui
      Scaffold(
     
      body: SingleChildScrollView(
        child: Column(
             
          children:[
        
            //food image
          Image.asset(widget.food.imagePath),
        
        
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
              children:[
              
              //food name
            Text(widget.food.name,
            style:const TextStyle(
              fontWeight:FontWeight.bold,
              fontSize: 20,
              ),
            ),
            
            //food price
            Text(
              '\Rs${widget.food.price}',
            style: TextStyle(
              fontSize: 16,
              color:Theme.of(context).colorScheme.primary,
              ),),
        
              const SizedBox(height:10),
        
             
              
            
            //food description
            Text(widget.food.description,),
            const SizedBox(height:10),
        
            Divider(color:Theme.of(context).colorScheme.secondary),
             const SizedBox(height:10),
            
            //addons
        
            Text(
              "Add-ons",
              style:TextStyle(
                color:Theme.of(context).colorScheme.inversePrimary,
                fontSize:16,
                fontWeight:FontWeight.bold,
                ),
                ),
        
              const SizedBox(height:10),
            Container(
              decoration:BoxDecoration(
                border:Border.all(
                  color:Theme.of(context).colorScheme.tertiary,
                  ),
                  borderRadius: BorderRadius.circular(8),
                  ),
              child: ListView.builder(
                shrinkWrap:true,
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                itemCount: widget.food.availableAddons.length,
                itemBuilder:(context,index){
              
                  //get individual addons
                  Addon addon = widget.food.availableAddons[index];
                  //return checkbox UI
                return CheckboxListTile(
                 
                  title:Text(addon.name),
                  subtitle:Text(
                    '\Rs${addon.price}',
                    style:TextStyle(
                      color:Theme.of(context).colorScheme.primary,
                      ),
                  ),
                   //value: true,
                   value: widget.selectedAddons[addon], 
                  onChanged: (bool? value){
                    setState((){
                        widget.selectedAddons[addon]=value!;
                    });
                    
                  },
  

                  
                  );
              },
              ),
            ),
            ],
            ),
          ),
        
        
          //button -->add to cart
          MyButton(
            text: "Add to cart", onTap: (){}),
            const SizedBox(height:25),
        ],
        
        ),
      ),
      

    ),


      //back button
      Container(
        decoration:BoxDecoration(
          color:Theme.of(context).colorScheme.secondary),
          child: IconButton(icon:Icon(Icons.arrow_back_ios_rounded),
          onPressed:()=> Navigator.pop(context),
          ),
          ),
    ],
    );
  }
}*/
import 'package:flutter/material.dart';
import 'package:mobileapp/componentss/my_button.dart';
import 'package:mobileapp/models/food.dart';
import 'package:mobileapp/models/restaurant.dart';
import 'package:provider/provider.dart';

class FoodPage extends StatefulWidget {
  final Food food;
  final Map<Addon, bool> selectedAddons = {};

  FoodPage({
    super.key,
    required this.food,
  }) {
    // Initialize selectedAddons to false
    for (Addon addon in food.availableAddons) {
      selectedAddons[addon] = false;
    }
  }

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {

  //method to add cart
  void addToCart(Food food,Map<Addon,bool>selectedAddons){
      //close the current food page to go back to menu
      Navigator.pop(context);

  //format the selected addons

    List<Addon> currentlySelectedAddons = [];
    for(Addon addon in widget.food.availableAddons){
      if(widget.selectedAddons[addon]== true){
        currentlySelectedAddons.add(addon);
      }
    }


  //add to cart
    context.read<Restaurant>().addToCart(food,currentlySelectedAddons);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children:[
        //scaffold UI
        Scaffold(
      appBar: AppBar(
        title: Text(widget.food.name), // Add the food name as the title
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        backgroundColor: Theme.of(context).colorScheme.secondary,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Food image
            Image.asset(widget.food.imagePath),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Food name
                  Text(
                    widget.food.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  // Food price
                  Text(
                    '\Rs${widget.food.price}',
                    style: TextStyle(
                      fontSize: 16,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  const SizedBox(height: 10),
                  // Food description
                  Text(widget.food.description),
                  const SizedBox(height: 10),
                  Divider(color: Theme.of(context).colorScheme.secondary),
                  const SizedBox(height: 10),
                  // Add-ons
                  Text(
                    "Add-ons",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Theme.of(context).colorScheme.tertiary,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.zero,
                      itemCount: widget.food.availableAddons.length,
                      itemBuilder: (context, index) {
                        // Get individual addons
                        Addon addon = widget.food.availableAddons[index];
                        // Return checkbox UI
                        return CheckboxListTile(
                          title: Text(addon.name),
                          subtitle: Text(
                            '\Rs${addon.price}',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                          value: widget.selectedAddons[addon],
                          onChanged: (bool? value) {
                            setState(() {
                              widget.selectedAddons[addon] = value!;
                            });
                          },
                        );
                      },
                    ),
                  
                  ),
                ],
              ),
            ),
            // Add to cart button
            MyButton(
              text: "Add to cart",
              onTap: () {addToCart(widget.food,widget.selectedAddons);}
            ),
            const SizedBox(height: 25),
          ],
        ),
      ),
    ),


        //back button
        SafeArea(
          child: Opacity(
            opacity:0.6,
            child: Container(
              margin:  const EdgeInsets.only(left:25),
              decoration:
            BoxDecoration(color:Theme.of(context).colorScheme.secondary,
             shape:BoxShape.circle,) ,
                     
            child:IconButton(
              icon:const Icon(Icons.arrow_back_rounded),
            onPressed: () => Navigator.pop(context),
            ),
            ),
          ),
        ),



    ],)
    ;
  }
}
