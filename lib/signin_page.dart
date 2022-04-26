import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_basic/CustomSigninButton.dart';
import 'package:ui_basic/CustomSigninButton.dart';
import 'package:ui_basic/CustomWidget.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Application"),
        elevation: 10.0,
      ),
      // Here we put container and column in a method for making code more readable
      body: _BuildMethod(),
      backgroundColor: Colors.grey[200],
    );
  }

  //Here are returning Widget , we can also return Container
  Widget _BuildMethod() {
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            "Sign in",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.blue, fontSize: 36),
          ),
          const SizedBox(
            height: 48.0,
          ),
          CustomSigninButton(
            //here we are using constructor of CustomSigninButton class
            text: "Sign in with Google",
            fontsize: 19.0,
            textcolor: Colors.black87,
            color: Colors.white,
            onPressed: () {},
          ),
          const SizedBox(
            height: 8.0,
          ),
//       !!Instead of repeating the code we can do make a different class  and reuse it
          //    ElevatedButton(
          //
          //         style: ElevatedButton.styleFrom(primary: Colors.white,
          //           shape:RoundedRectangleBorder(
          //             borderRadius: BorderRadius.circular(5.0)),),
          //       onPressed: (){},
          //         child: const Text("Sign in with Facebook",style: TextStyle(color: Colors.black87,fontSize: 17,fontFamily: 'MsMadi-Regular'),),),

          //    ElevatedButton(

          //         style: ElevatedButton.styleFrom(primary: Colors.white,
          //           shape:RoundedRectangleBorder(
          //             borderRadius: BorderRadius.circular(5.0)),),
          //       onPressed: (){},
          //         child: const Text("Sign in with Gmail",style: TextStyle(color: Colors.black87,fontSize: 17),),),
          //     const SizedBox(height: 8.0,),
          CustomSigninButton(
            //here we are using constructor of CustomSigninButton class
            text: "Sign in with Facebook",
            fontsize: 19.0,
            textcolor: Colors.black87,
            color: Color(0xFF334D92),
            onPressed: () {},
          ),
          const SizedBox(
            height: 8.0,
          ),
          CustomSigninButton(
            //here we are using constructor of CustomSigninButton class
            text: "Sign in with Email",
            fontsize: 19.0,
            textcolor: Colors.black87,
            color: Colors.teal[700],
            onPressed: () {},
          ),
          const SizedBox(
            height: 8.0,
          ),
          const Text("or",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color:Colors.black87,
              ),),

          const SizedBox(
            height: 8.0,
          ),
          CustomSigninButton(
            //here we are using constructor of CustomSigninButton class
            text: "Go anonymous",
            fontsize: 19.0,
            textcolor: Colors.black87,
            color: Colors.lime[300],
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
