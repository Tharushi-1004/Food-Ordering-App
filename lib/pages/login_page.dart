// ignore_for_file: use_build_context_synchronously

/*import 'package:flutter/material.dart';
import 'package:mobileapp/componentss/my_button.dart';
import 'package:mobileapp/componentss/my_textfield.dart';
import 'package:mobileapp/pages/home_page.dart';
import 'package:mobileapp/services/auth/auth_service.dart';


class LoginPage extends StatefulWidget{
  final void Function()? onTap;

  const LoginPage({super.key, this.onTap});

  @override
  State<LoginPage> createState()=> _LoginPageState();
}
  class _LoginPageState extends State<LoginPage>{

  
  //text editing controller
  final TextEditingController  emailController =   TextEditingController();
  final TextEditingController  passwordController =  TextEditingController();
  
  //login method
  void login()async{
    final _authService = AuthService();

    //try sign in
    try{
      await _authService.signInWithEmailPassword(emailController.text, passwordController.text,);
      login();
    }


    //display any error
    catch (e){
      showDialog(
    context: context,
    builder: (context) => AlertDialog(
      
      title: Text(e.toString()),
    ),
  );

    }

  }
   


    // forgot password
  void forgotPassword() {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      backgroundColor: Theme.of(context).colorScheme.surface,
      title: const Text("User tapped forgot password."),
    ),
  );
}

 


    //navigate homepage
   /* Navigator.push(context,MaterialPageRoute(builder: (context)=>const HomePage(),
    ),
    );*/
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Theme.of(context).colorScheme.surface,
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //logo
          Icon(
            Icons.lock_open_rounded,
            size:100,
            color: Theme.of(context).colorScheme.inversePrimary,
          ),

          const SizedBox(height: 25),
          Text("Food Delivery App",
          style:TextStyle(
            fontSize:16,
            color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
          const SizedBox(height:25),
          // email textfield
          MyTextfield(
            controller:emailController,
            hintText:"Email",
            obscureText:false,
          ),
            const SizedBox(height:10),
          // password textfield
          MyTextfield(
            controller:passwordController,
            hintText:"Password",
            obscureText:true,
          ),
            const SizedBox(height:10),

        //sign in button
        MyButton(text: "Sign In",
         onTap: login,
         ),
         const SizedBox(height:25),

        Row(
           mainAxisAlignment:MainAxisAlignment.center,
          children: [
         
          Text("Not a member?",
          style:TextStyle(
            color:Theme.of(context).colorScheme.inversePrimary ),

        ),
          const SizedBox(width:4),
          GestureDetector(
          onTap:widget.onTap,
          child:Text("Register now",
          style:TextStyle(
            color:Theme.of(context).colorScheme.inversePrimary,
            fontWeight:FontWeight.bold,
            
            
          ),
          ),
          ),


        ],
        ),
        ],
        ),
       
        
        
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:mobileapp/componentss/my_button.dart';
import 'package:mobileapp/componentss/my_textfield.dart';
import 'package:mobileapp/pages/home_page.dart';
import 'package:mobileapp/services/auth/auth_service.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;

  const LoginPage({super.key, this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // text editing controller
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // login method
  void login() async {
    final _authService = AuthService();

    // try sign in
    try {
      await _authService.signInWithEmailPassword(
          emailController.text, passwordController.text);
      
      // Navigate to HomePage after successful login
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
   
    } catch (e) {
      // display any error
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text(e.toString()),
        ),
      );
    }
  }

  // forgot password
  void forgotPassword() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Theme.of(context).colorScheme.surface,
        title: const Text("User tapped forgot password."),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo
            Icon(
              Icons.lock_open_rounded,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            const SizedBox(height: 25),
            Text(
              "Food Delivery App",
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
            const SizedBox(height: 25),
            // email textfield
            MyTextfield(
              controller: emailController,
              hintText: "Email",
              obscureText: false,
            ),
            const SizedBox(height: 10),
            // password textfield
            MyTextfield(
              controller: passwordController,
              hintText: "Password",
              obscureText: true,
            ),
            const SizedBox(height: 10),
            // sign in button
            MyButton(
              text: "Sign In",
              onTap: login,
            ),
            const SizedBox(height: 25),
            // already a member? Register here
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Not a member?",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary),
                ),
                const SizedBox(width: 4),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    "Register now",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:mobileapp/componentss/my_button.dart';
import 'package:mobileapp/componentss/my_textfield.dart';
import 'package:mobileapp/pages/home_page.dart';
import 'package:mobileapp/services/auth/auth_service.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;

  const LoginPage({super.key, this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // text editing controller
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // loading indicator state
  bool isLoading = false;

  // login method
  void login() async {
    final _authService = AuthService();

    // Set loading state
    setState(() {
      isLoading = true;
    });

    // try sign in
    try {
      await _authService.signInWithEmailPassword(
        emailController.text,
        passwordController.text,
      );
      
      // Navigate to HomePage after successful login
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    } catch (e) {
      // display any error
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text(e.toString()), // show the error message
        ),
      );
    } finally {
      // Hide loading indicator
      setState(() {
        isLoading = false;
      });
    }
  }

  // forgot password
  void forgotPassword() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Theme.of(context).colorScheme.surface,
        title: const Text("User tapped forgot password."),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo
            Icon(
              Icons.lock_open_rounded,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            const SizedBox(height: 25),
            Text(
              "Food Delivery App",
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
            const SizedBox(height: 25),
            // email textfield
            MyTextfield(
              controller: emailController,
              hintText: "Email",
              obscureText: false,
            ),
            const SizedBox(height: 10),
            // password textfield
            MyTextfield(
              controller: passwordController,
              hintText: "Password",
              obscureText: true,
            ),
            const SizedBox(height: 10),
            // sign in button
            MyButton(
              text: "Sign In",
              onTap: login,
            ),
            const SizedBox(height: 25),
            // already a member? Register here
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Not a member?",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
                const SizedBox(width: 4),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    "Register now",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            if (isLoading)
              const CircularProgressIndicator() // show a loading spinner if isLoading is true
          ],
        ),
      ),
    );
  }
}*/
import 'package:flutter/material.dart';
import 'package:mobileapp/componentss/my_button.dart';
import 'package:mobileapp/componentss/my_textfield.dart';
import 'package:mobileapp/pages/home_page.dart';
import 'package:mobileapp/services/auth/auth_service.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;

  const LoginPage({super.key, this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // text editing controllers
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // loading indicator state
  bool isLoading = false;

  // login method
  void login() async {
    final _authService = AuthService();

    // Set loading state
    setState(() {
      isLoading = true;
    });

    try {
      // Try to sign in
      await _authService.signInWithEmailPassword(
        emailController.text,
        passwordController.text,
      );
      
      // Navigate to HomePage after successful login
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    } catch (e) {
      // display any error in a dialog
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(e.toString()), // show the error message
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(); // Close dialog box
                },
                child: const Text("OK"),
              ),
            ],
          );
        },
      );
    } finally {
      // Hide loading indicator after login attempt
      setState(() {
        isLoading = false;
      });
    }
  }

  // forgot password method
  void forgotPassword() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Theme.of(context).colorScheme.surface,
        title: const Text("User tapped forgot password."),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo
            Icon(
              Icons.lock_open_rounded,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            const SizedBox(height: 25),
            Text(
              "Food Delivery App",
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
            const SizedBox(height: 25),
            // email textfield
            MyTextfield(
              controller: emailController,
              hintText: "Email",
              obscureText: false,
            ),
            const SizedBox(height: 10),
            // password textfield
            MyTextfield(
              controller: passwordController,
              hintText: "Password",
              obscureText: true,
            ),
            const SizedBox(height: 10),
            // sign in button
            MyButton(
              onTap: login,
              text: "Login",
              
            ),
            const SizedBox(height: 25),
            // already a member? Register here
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Not a member?",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
                const SizedBox(width: 4),
                GestureDetector(
                  onTap: widget.onTap, // Handle registration tap
                  child: Text(
                    "Register now",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            if (isLoading)
              const CircularProgressIndicator() // show a loading spinner if isLoading is true
          ],
        ),
      ),
    );
  }
}


