import 'package:flutter/material.dart';
import 'package:MedBuzz/ui/size_config/config.dart';

void main() => runApp(MaterialApp(
  home: Signup(),
));

class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //get Screen size
    Size screenSize = MediaQuery.of(context).size;
    //get Safe area padding
    EdgeInsets safe = MediaQuery.of(context).viewPadding;

    print("value = ");
    print( Config.xMargin(context, 1) );
    print( Config.yMargin(context, 1) );
    //yMargin constant  = 7.76
    //xMargin constant = 4.5


    return SafeArea(
        child: Scaffold(
        backgroundColor: Color(0xffE5E5E5),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SizedBox(height: screenSize.height * 0.04,),
            Padding(
              padding: EdgeInsets.only(left: Config.xMargin(context, 5.3) ),
              child: Text('Create An \nAccount',
                style: TextStyle(
                  fontFamily: 'Segoe-Bold',
                  fontSize: Config.yMargin(context, 4.12),
                )
              ),
            ),
            
            Divider(
              height: screenSize.height * 0.03,
              color: Color(0xff617ADC),
              thickness: Config.yMargin(context, 0.64),
              endIndent: screenSize.width * 0.25,
              ),
            Padding(
              padding: EdgeInsets.only(left: Config.xMargin(context, 5.3), top: Config.yMargin(context, 1.28)),
              child: Text(
                'Name',
                style: TextStyle(
                  fontFamily: 'Segoe-Bold',
                  fontWeight: FontWeight.w400,
                  fontSize: Config.yMargin(context, 2.31)
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(left: Config.xMargin(context, 5.3), right: Config.xMargin(context, 6) ),
                child: TextField(
                decoration: InputDecoration(
                hintText: 'Jay'
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: Config.xMargin(context, 5.3), top: Config.yMargin(context, 1.28)),
              child: Text(
                'Email',
                style: TextStyle(
                  fontFamily: 'Segoe-Bold',
                  fontWeight: FontWeight.w400,
                  fontSize: Config.yMargin(context, 2.31)
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(left: Config.xMargin(context, 5.3), right: Config.xMargin(context, 6) ),
                child: TextField(
                decoration: InputDecoration(
                hintText: 'abc@example.com'
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: Config.xMargin(context, 5.3), top: Config.yMargin(context, 1.28)),
              child: Text(
                'Password',
                style: TextStyle(
                  fontFamily: 'Segoe-Bold',
                  fontWeight: FontWeight.w400,
                  fontSize: 18.0,
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(left: Config.xMargin(context, 5.3), right: Config.xMargin(context, 6) ),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                  hintText: '••••••••'
                ),
              ),
            ),

            Container(

              padding: EdgeInsets.all(Config.xMargin(context, 3.55)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)), 
                color: Color(0xff617ADC),
                ),
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: Config.yMargin(context, 3.09) , left: Config.xMargin(context, 5.33), right: Config.xMargin(context, 6) ), //24,24,27
              child: Text(
                'Sign Up',
                style: TextStyle(
                  fontFamily: 'Segoe-Bold',
                  fontSize: Config.yMargin(context, 2.06),
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),

            SizedBox(height: screenSize.height * 0.025,),
            Padding(
              padding: EdgeInsets.only(bottom: screenSize.height * 0.05),
                          child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                Text(
                  'Have an account? ',
                  style: TextStyle(
                  fontFamily: 'Segoe-Bold',
                  fontWeight: FontWeight.bold,
                  fontSize: Config.yMargin(context, 2.06), //16
                ),),
                Text(
                  'Login',
                  style: TextStyle(
                  fontFamily: 'Segoe-Bold',
                  fontWeight: FontWeight.bold,
                  color: Color(0xff617ADC),
                  fontSize: Config.yMargin(context, 2.06), //16
                ),)
              ],),
            )

            //4.5, 7.76
          ],
        )
      ),
    );
  }
}



