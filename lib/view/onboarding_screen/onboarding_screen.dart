import 'package:ecommerce_sample/view/utils/color_constants.dart';
import 'package:ecommerce_sample/view/utils/image_constant.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(children: [
            Text("1",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w300),),
            Text("/3",style: TextStyle(color:ColorConstants.FIRSTCOLOR,fontSize: 18,fontWeight: FontWeight.w300),),
          ],),
        ),
        actions: [Text("Skip",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w300),),SizedBox(width: 10,)],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 110,),
            Image.asset(ImageConstant.FIRSTIMAGE,
            height: 300,
            width: 300,
            fit: BoxFit.fill,
            ),
            SizedBox(height: 15,),
            Text("Choose Products",style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            Text("Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.",
            style: TextStyle(color:ColorConstants.FIRSTCOLOR,fontSize: 14,fontWeight: FontWeight.w300,),
            textAlign: TextAlign.center,maxLines: 3,
            overflow: TextOverflow.ellipsis,),
          ],
        ),
      ),
    );
  }
}