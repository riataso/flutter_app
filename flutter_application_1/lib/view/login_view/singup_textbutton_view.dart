import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


Widget SingupTextButtonView (BuildContext context, Function onTapSignup ){
  return Container(
    child: TextButton(
              child: Text('Sing up'),
            
              style: TextButton.styleFrom(), 
              onPressed: () {
                onTapSignup();
              },
          ),
  );
  
    


}