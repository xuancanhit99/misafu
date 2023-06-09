import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:misafu/src/constants/text_strings.dart';
import 'package:misafu/src/features/authentication/controllers/otp_controller.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var otp;
    final controller = Get.put(OTPController());
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(cOtpTitle, style: GoogleFonts.montserrat(
              fontWeight: FontWeight.bold,
              fontSize: 80,
            ),),
            Text(cOtpSubTitle.toUpperCase(), style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontSize: 16),),
            const SizedBox(height: 40,),
            const Text("$cOtpMessage xuancanhit99@gmail.com", textAlign: TextAlign.center,),
            const SizedBox(height: 20,),
            OtpTextField(
              numberOfFields: 6,
              fillColor: Colors.black.withOpacity(0.1),
              filled: true,
              onSubmit: (code){
                otp = code;
                controller.verifyOTP(otp);
              },
              // keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20,),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: (){
                  controller.verifyOTP(otp);
                }, child: const Text(cNext)))
          ],
        ),
      ),
    );
  }
}
