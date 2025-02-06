import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:mobileapp/models/cart_item.dart';
import 'package:mobileapp/models/food.dart';

class Restaurant extends ChangeNotifier {
  //list of food menu
  final List<Food> _menu = [

  //burgers
  Food(
    name: "Cheese- curd Burger",
    description:"A juicy chicken patty with melted chedar,lettuce,pickles,tomato and a hint of onions.",
    imagePath: "lib/images/burgers/cheese_curd_burger.jpg",
    price: 1300,
    category:FoodCategory.burgers,
    availableAddons:[
      Addon(name:"Extra Cheese",price:200),
      Addon(name:"Extra patty",price:350),
      Addon(name:"Avacado",price:150),
      
    ],
    
  ),

  Food(
    name: "BBQ Grilled Burger",
    description:"A grilled chicken patty with melted chedar,lettuce,pickles,tomato and a hint of onions and also fries.",
    imagePath: "lib/images/burgers/BBQ_Grilled_burger.jpg",
    price: 1800,
    category:FoodCategory.burgers,
    availableAddons:[
      Addon(name:"Extra Cheese",price:200),
      Addon(name:"Extra patty",price:350),
      Addon(name:"Avacado",price:150),
      
    ],
    
  ),

  Food(
    name: "Chicken Burger",
    description:"With two juicy chicken patty with melted cheese,lettuce,pickles,tomato and onions.",
    imagePath: "lib/images/burgers/chicken_burger.jpg",
    price: 1300,
    category:FoodCategory.burgers,
    availableAddons:[
      Addon(name:"Extra Cheese",price:200),
      Addon(name:"Extra patty",price:350),
      Addon(name:"Avacado",price:150),
      
    ],
    
  ),

  Food(
    name: "Chilli Burger",
    description:"A spicy chicken buger  with melted chedar,lettuce,pickles,tomato and chillies.",
    imagePath: "lib/images/burgers/chilli_burger.jpg",
    price: 1800,
    category:FoodCategory.burgers,
    availableAddons:[
      Addon(name:"Extra Cheese",price:200),
      Addon(name:"Extra patty",price:350),
      Addon(name:"Avacado",price:150),
      
    ],
    
  ),

  Food(
    name: "Gourment Burger",
    description:"A classic gourment burger with melted chedar,lettuce,pickles,tomato and a hint of onions.",
    imagePath: "lib/images/burgers/gourment_burger.jpg",
    price: 1300,
    category:FoodCategory.burgers,
    availableAddons:[
      Addon(name:"Extra Cheese",price:200),
      Addon(name:"Extra patty",price:350),
      Addon(name:"Avacado",price:150),
      
    ],
    
  ),

  //salads
  Food(
    name: "Butter - Lettuce Salad",
    description:"crisp leaves, creamy dressing, and a burst of freshness in every bite",
    imagePath: "lib/images/salads/Butter-Lettuce-Salad.jpg",
    price: 800,
    category:FoodCategory.salads,
    availableAddons:[
      Addon(name:"Extra lettuce",price:200),
      Addon(name:"Extra butter",price:350),
      Addon(name:"Avacado",price:150),
      
    ],
    
  ),
  Food(
    name: "Chicken Salad",
    description:"tender chicken, crisp greens, and a medley of flavors in every forkful",
    imagePath: "lib/images/salads/chicken_salad.jpg",
    price: 800,
    category:FoodCategory.salads,
    availableAddons:[
      Addon(name:"Extra chicken",price:200),
      Addon(name:"Extra cheese",price:350),
      Addon(name:"Avacado",price:150),
      
    ],
    
  ),
  
Food(
    name: "Cobb Salad",
    description:"a hearty mix of crisp greens, tender chicken, creamy avocado, tangy blue cheese, and crunchy bacon; a classic delight in every bite",
    imagePath: "lib/images/salads/cobb_salad.jpg",
    price: 800,
    category:FoodCategory.salads,
    availableAddons:[
      Addon(name:"Extra chicken",price:200),
      Addon(name:"Extra cheese",price:350),
      Addon(name:"Avacado",price:150),
      
    ],
    
  ),
  
  Food(
    name: "Greek Salad",
    description:"vibrant tomatoes, crisp cucumbers, tangy feta, and briny olives; a Mediterranean masterpiece in every bite.",
    imagePath: "lib/images/salads/Greek-Salad.jpg",
    price: 800,
    category:FoodCategory.salads,
    availableAddons:[
      Addon(name:"Extra chicken",price:200),
      Addon(name:"Extra cheese",price:350),
      Addon(name:"Avacado",price:150),
      
    ],
    
  ),
  Food(
    name: "Kale Ceasere Salad",
    description:"hearty kale, creamy dressing, and a sprinkle of Parmesan; a nutritious twist on a classic favorite.",
    imagePath: "lib/images/salads/kale_ceaser_salad.jpg",
    price: 800,
    category:FoodCategory.salads,
    availableAddons:[
      Addon(name:"Extra chicken",price:200),
      Addon(name:"Extra cheese",price:350),
      Addon(name:"Avacado",price:150),
      
    ],
    
  ),
  //desserts
  Food(
    name: "Brownies",
    description:"rich, fudgy, and irresistibly chocolatey; a bite of pure indulgence",
    imagePath: "lib/images/desserts/brownies.jpg",
    price: 800,
    category:FoodCategory.desserts,
    availableAddons:[
      Addon(name:"Extra chicken",price:200),
      Addon(name:"Extra cheese",price:350),
      Addon(name:"Avacado",price:150),
      
    ],
    
  ),

Food(
    name: "Cheese Cake",
    description:"creamy, dreamy, and decadently delicious; a slice of heaven on a plate.",
    imagePath: "lib/images/desserts/cheesecake.jpg",
    price: 800,
    category:FoodCategory.desserts,
    availableAddons:[
      Addon(name:"Extra chicken",price:200),
      Addon(name:"Extra cheese",price:350),
      Addon(name:"Avacado",price:150),
      
    ],
    
  ),

  Food(
    name: "Chocolate Chip Cookies",
    description:"warm, gooey, and packed with melty chocolate; a timeless treat.",
    imagePath: "lib/images/desserts/chocalate_chip_cokies.jpg",
    price: 800,
    category:FoodCategory.desserts,
    availableAddons:[
      Addon(name:"Extra chicken",price:200),
      Addon(name:"Extra cheese",price:350),
      Addon(name:"Avacado",price:150),
      
    ],
    
  ),

  
  Food(
    name: "Fruit Tart",
    description:"a buttery crust filled with creamy custard and topped with a rainbow of fresh fruits; a feast for the eyes and the taste buds..",
    imagePath: "lib/images/desserts/fruit_tarts.jpg",
    price: 800,
    category:FoodCategory.desserts,
    availableAddons:[
      Addon(name:"Extra chicken",price:200),
      Addon(name:"Extra cheese",price:350),
      Addon(name:"Avacado",price:150),
      
    ],
    
  ),

   Food(
    name: "Waffles",
    description:"golden, crispy, and fluffy; perfect with syrup, berries, or a dollop of whipped cream",
    imagePath: "lib/images/desserts/waffles.jpg",
    price: 800,
    category:FoodCategory.desserts,
    availableAddons:[
      Addon(name:"Extra chicken",price:200),
      Addon(name:"Extra cheese",price:350),
      Addon(name:"Avacado",price:150),
      
    ],
    
  ),
  //drinks
Food(
    name: "Coca cola",
    description:"golden, crispy, and fluffy; perfect with syrup, berries, or a dollop of whipped cream",
    imagePath: "lib/images/desserts/coka cola.jpg",
    price: 800,
    category:FoodCategory.drinks,
    availableAddons:[
      Addon(name:"Extra chicken",price:200),
      Addon(name:"Extra cheese",price:350),
      Addon(name:"Avacado",price:150),
      
    ],
    
  ),

  Food(
    name: "Fruit Juice",
    description:"golden, crispy, and fluffy; perfect with syrup, berries, or a dollop of whipped cream",
    imagePath: "lib/images/desserts/fruit_juice.jpg",
    price: 800,
    category:FoodCategory.drinks,
    availableAddons:[
      Addon(name:"Extra chicken",price:200),
      Addon(name:"Extra cheese",price:350),
      Addon(name:"Avacado",price:150),
      
    ],
    
  ),
  Food(
    name: "Mountain Dew",
    description:"golden, crispy, and fluffy; perfect with syrup, berries, or a dollop of whipped cream",
    imagePath: "lib/images/desserts/mountain_dew.jpg",
    price: 800,
    category:FoodCategory.drinks,
    availableAddons:[
      Addon(name:"Extra chicken",price:200),
      Addon(name:"Extra cheese",price:350),
      Addon(name:"Avacado",price:150),
      
    ],
    
  ),
  Food(
    name: "Pepsi",
    description:"golden, crispy, and fluffy; perfect with syrup, berries, or a dollop of whipped cream",
    imagePath: "lib/images/desserts/pepsi.jpg",
    price: 800,
    category:FoodCategory.drinks,
    availableAddons:[
      Addon(name:"Extra chicken",price:200),
      Addon(name:"Extra cheese",price:350),
      Addon(name:"Avacado",price:150),
      
    ],
    
  ),
  Food(
    name: "Sprite",
    description:"golden, crispy, and fluffy; perfect with syrup, berries, or a dollop of whipped cream",
    imagePath: "lib/images/desserts/sprite.jpg",
    price: 800,
    category:FoodCategory.drinks,
    availableAddons:[
      Addon(name:"Extra chicken",price:200),
      Addon(name:"Extra cheese",price:350),
      Addon(name:"Avacado",price:150),
      
    ],
    
  ),

  //sides
  Food(
    name: "Coleslaw",
    description:"golden, crispy, and fluffy; perfect with syrup, berries, or a dollop of whipped cream",
    imagePath: "lib/images/sides/coleslaw.jpg",
    price: 800,
    category:FoodCategory.sides,
    availableAddons:[
      Addon(name:"Extra chicken",price:200),
      Addon(name:"Extra cheese",price:350),
      Addon(name:"Avacado",price:150),
      
    ],
    
  ),

  Food(
    name: "Cucumber with Dill",
    description:"golden, crispy, and fluffy; perfect with syrup, berries, or a dollop of whipped cream",
    imagePath: "lib/images/sides/cucumber_with_dil.jpg",
    price: 800,
    category:FoodCategory.sides,
    availableAddons:[
      Addon(name:"Extra chicken",price:200),
      Addon(name:"Extra cheese",price:350),
      Addon(name:"Avacado",price:150),
      
    ],
    
  ),

  Food(
    name: "Garlic Bread",
    description:"golden, crispy, and fluffy; perfect with syrup, berries, or a dollop of whipped cream",
    imagePath: "lib/images/sides/garlic_bread.jpg",
    price: 800,
    category:FoodCategory.sides,
    availableAddons:[
      Addon(name:"Extra chicken",price:200),
      Addon(name:"Extra cheese",price:350),
      Addon(name:"Avacado",price:150),
      
    ],
    
  ),
  Food(
    name: "Puff Rolls",
    description:"golden, crispy, and fluffy; perfect with syrup, berries, or a dollop of whipped cream",
    imagePath: "lib/images/sides/puff_rolls.jpg",
    price: 800,
    category:FoodCategory.sides,
    availableAddons:[
      Addon(name:"Extra chicken",price:200),
      Addon(name:"Extra cheese",price:350),
      Addon(name:"Avacado",price:150),
      
    ],
    
  ),
  Food(
    name: "Smashed Potatoes",
    description:"golden, crispy, and fluffy; perfect with syrup, berries, or a dollop of whipped cream",
    imagePath: "lib/images/sides/smashed_potatoes.jpg",
    price: 800,
    category:FoodCategory.sides,
    availableAddons:[
      Addon(name:"Extra chicken",price:200),
      Addon(name:"Extra cheese",price:350),
      Addon(name:"Avacado",price:150),
      
    ],
    
  ),


  ];
  /* 
  G E TT EERS
  */
  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;
/* 
 OPERATIONS
  */
//user cart
final List<CartItem>_cart = [];



  //add to cart
  void addToCart(Food food,List<Addon>selectedAddons){
    //see if ther is a cart item
    CartItem? cartItem =  _cart.firstWhereOrNull((item){
      
      //check food items are same
      bool isSameFood = item.food == food;


      //check selected addons are same
      bool isSameAddons = 
      ListEquality().equals(item.selectedAddons,selectedAddons);
      return isSameFood && isSameAddons;
    });
    if(cartItem!= null){
      cartItem.quantity++;

    }
    //o.w. add anew item
    else{
      _cart.add(CartItem(
        food:food,
        selectedAddons: selectedAddons,
        ),
        );
    }
  notifyListeners();
  }

  //remove form cart
  void removeFromCart(CartItem cartItem){
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1){
      if(_cart[cartIndex].quantity>1){
        _cart[cartIndex].quantity--;
      }else{
        _cart.removeAt(cartIndex);
      }
    }
     notifyListeners();
  }

  //get total price of cart
  double getTotalPrice(){
    double total = 0.0; 

    for(CartItem cartItem in _cart){
      double itemTotal = cartItem.food.price;
    

    for(Addon addon in cartItem.selectedAddons ){
      itemTotal += addon.price;
    }
    total += itemTotal*cartItem.quantity;
    
    }
    return total;
  }


  // get total number of items
int getTotalItemCount(){
  int totalItemCount = 0;


  for (CartItem  cartItem in _cart){
    totalItemCount += cartItem.quantity;
  }
  return totalItemCount;
}



  // clear the cart
void clearCart(){
  _cart.clear();
  notifyListeners();
}


  /* 
 HELPER
  */

  //generate the recipt


  //format double value in to money


  //format list of addons in to a string summary
}