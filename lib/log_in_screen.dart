import 'package:flutter/material.dart';
import 'package:log_in/decorated_text_field.dart';

class LogInScrren extends StatelessWidget {
  const LogInScrren({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 33, 36, 42),
      body: Form(
        child: Container(
          padding: const EdgeInsets.all(25),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                textAlign: TextAlign.right ,
                'Log In',
                style: TextStyle(color: Colors.white, fontSize: 40 ),
              ),
              const SizedBox(
                height: 45,
              ),
              const DecoratedTextField(label: "Enter your email" , icon: Icons.person,),
              const SizedBox(
                height: 20,
              ),
              const DecoratedTextField(label: "Enter your password" , icon:Icons.lock,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'forgot password',
                      style: TextStyle(
                        color: Colors.redAccent,
                        fontSize: 17,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                  foregroundColor: Colors.white,
                  fixedSize: const Size(300, 50),
                ),
                child: const Text(
                  'log in',
                  style: TextStyle(fontSize: 23),
                ),
              ),
              const SizedBox(
                height: 35,
              ),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account?" , style: TextStyle(color: Colors.white),),
                TextButton(onPressed: (){}, 
                child: const Text('Sign up' , style:TextStyle(
                    color: Colors.redAccent,
                    fontSize: 15,
                  ) ,),)
              ],
             )
            ],
          ),
        ),
      ),
    );
  }
}
