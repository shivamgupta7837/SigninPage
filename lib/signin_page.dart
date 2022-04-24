import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "Sign in",
              textAlign:TextAlign.center,
              style: TextStyle(color: Colors.blue, fontSize: 36),
            ),
            const  SizedBox(
              height: 3.0,
            ),
            ElevatedButton(
                //
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,shape:RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),),
              onPressed: (){},
                child: const Text("Sign in with Google",style: TextStyle(color: Colors.black87,fontSize: 17),),),
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
            const SizedBox(height: 8.0,),
            CustomWidget(child: const Text("Sign in with Facebook",
              style: TextStyle(color: Colors.black87,fontSize: 17),),
              color:Colors.white,
              borderRadius:4.0,
              onPressed: (){},
                 ),
            CustomWidget(child: const Text("Sign in with Email",
              style: TextStyle(color: Colors.black87,fontSize: 17),),
              color:Colors.white,
              borderRadius:4.0,
              onPressed: (){},
                 ),
          ],
        ),
    );
  }
}
