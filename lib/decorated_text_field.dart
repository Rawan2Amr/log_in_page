

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DecoratedTextField extends StatefulWidget{
    const DecoratedTextField({super.key , required this.label , required this.icon});
  
  final String label ;
  final IconData icon ;
   @override
  State<DecoratedTextField> createState() {
     return DecoratedTextFieldState();
  }
}


class DecoratedTextFieldState extends State<DecoratedTextField>{

  @override
  Widget build(BuildContext context) {
     return   Material(
                  color: Colors.redAccent,
                  elevation:  2,
                  borderRadius: BorderRadius.circular(20),
                  child: TextFormField(
                    style: const TextStyle(color:  Colors.white),
                    decoration: InputDecoration(
                      prefixIcon: Icon(widget.icon  , color: Colors.white,),
                      isDense: true,
                      hintText: widget.label,
                      hintStyle: const TextStyle(color: Colors.white),
                      filled: true,
                      fillColor: const Color.fromARGB(255, 33, 36, 42),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(
                          color: Colors.redAccent,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(

                          color: Colors.redAccent,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(
                          color: Colors.redAccent,
                        ),
                      ),
                    ),
                    
                  ),
     );
  }
}