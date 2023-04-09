import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(children: [
          Container(
            width: 200.w,
            height: 221.h,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    alignment: Alignment.topLeft,
                    image: AssetImage(
                      "assets/images/UpperBackground.png",
                    ))),
          ),
          Container(
            width: 390.w,
            height: 844.h,
            padding: EdgeInsets.only(top: 153.h, left: 16.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Welcome Back!",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 55.h,
                ),
                Image.asset(
                  "assets/images/splash.png",
                  width: 160.w,
                  height: 140.h,
                ),
                const SizedBox(
                  height: 56,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  width: 343.w,
                  height: 60.h,
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(255, 68, 68, 0.25),
                      borderRadius: BorderRadius.circular(20)),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Enter your Email",
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 18.sp,
                      ),
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide.none, // removes the line
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  margin: EdgeInsets.only(top: 25.h),
                  width: 343.w,
                  height: 60.h,
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(255, 68, 68, 0.25),
                      borderRadius: BorderRadius.circular(20)),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Enter your password",
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 18.sp,
                      ),
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide.none, // removes the line
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 65.h,
                ),
                SizedBox(
                  height: 72.h,
                  width: 340.w,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(),
                      backgroundColor: const Color.fromRGBO(255, 68, 68, 1),
                    ),
                    child: Text(
                      "SignUp",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 18.sp,
                          color: Colors.white,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.black,
                        fontFamily: 'Inter',
                      ),
                    ),
                    InkWell(
                      //TODO: Navigate to SignUp Screen
                      onTap: () {},
                      child: Text(
                        " Sign In",
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontFamily: 'Inter',
                          color: const Color.fromARGB(255, 207, 39, 39),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
