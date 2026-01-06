import 'package:estimatorapp/app/data/utils/static_img/static_img.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:smart_auth/smart_auth.dart';
import '../../../../data/utils/static_colors/static_colors.dart';
import '../../../../data/utils/static_string/static_string.dart';
import '../../../../data/utils/static_style/staticstyle.dart';
import '../../../global_widget/custom_button/custom_button.dart';

class VerifiPageView extends StatefulWidget {
  const VerifiPageView({Key? key}) : super(key: key);

  @override
  State<VerifiPageView> createState() => _VerifiPageViewState();
}

class _VerifiPageViewState extends State<VerifiPageView> {
  late final SmsRetrieverImpl smsRetriever;
  late final TextEditingController pinController;
  late final FocusNode focusNode;
  late final GlobalKey<FormState> formKey;
  late final PageController pageController;

  String otpError = "";
  bool isValid = false;



  @override
  void initState() {
    super.initState();
    formKey = GlobalKey<FormState>();
    pinController = TextEditingController();
    focusNode = FocusNode();
    smsRetriever = SmsRetrieverImpl(SmartAuth.instance);
    pageController = PageController();
  }

  @override
  void dispose() {
    pageController.dispose();
    pinController.dispose();
    focusNode.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    const borderColor = Color.fromRGBO(23, 171, 144, 0.4);

    final defaultPinTheme = PinTheme(
      width: 54,
      height: 60,
      textStyle: const TextStyle(fontSize: 22, color: Colors.black87),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Color(StaticColors.whiteDarker), width: 2),
      ),
    );

    return SafeArea(
      child: Scaffold(
        body: PageView.builder(

          controller: pageController,
          physics: NeverScrollableScrollPhysics(),
          itemCount: 2,
          itemBuilder: (context, index) => Form(
            key: formKey,
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: 56),
                      child: Text(
                        StaticString.verificationHa,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: Color(StaticColors.textSeColor),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                    child: Text(
                      StaticString.verificationSub,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(StaticColors.grayColor),
                      ),
                    ),
                  ),

                  SizedBox(height: 59),
                  Pinput(
                    length: 6,
                    smsRetriever: smsRetriever,
                    controller: pinController,
                    focusNode: focusNode,
                    defaultPinTheme: defaultPinTheme,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        setState(() {
                          otpError = "Otp cannot be empty";
                          isValid = false;
                        });
                        return "";
                      }

                      if (value != "222222") {
                        setState(() {
                          otpError = "Incorrect OTP";
                          isValid = false;
                        });
                        return "";
                      }

                      setState(() {
                        otpError = "";
                        isValid = true;
                      });

                      return null;
                    },
                    onCompleted: (pin) => debugPrint("Completed: $pin"),
                    errorText: otpError,
                  ),

                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        StaticString.ifY,
                        style: StaticStyle.style(
                          14,
                          StaticColors.whiteHover,
                          FontWeight.w400,
                        ),
                      ),
                      Text(
                        StaticString.resend,
                        style: StaticStyle.style(
                          14,
                          StaticColors.linkTextColor,
                          FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 60),
                  CustomButton(
                    bgColor: StaticColors.btnSeColor,
                    fColor: StaticColors.whiteColor,
                    onTap: () {
                      if (formKey.currentState!.validate()) {
                        pageController.nextPage(
                          duration: Duration(milliseconds: 400),
                          curve: Curves.easeInOut,
                        );
                      }
                    },
                    title: StaticString.verify,
                    height: 48,
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/// Sms Retriever Implementation
/// Sms Retriever Implementation
class SmsRetrieverImpl implements SmsRetriever {
  const SmsRetrieverImpl(this.smartAuth);
  final SmartAuth smartAuth;

  @override
  Future<void> dispose() async {
    try {
      await smartAuth.removeUserConsentApiListener();
    } catch (_) {}

    try {
      await smartAuth.removeSmsRetrieverApiListener();
    } catch (_) {}

    return;
  }

  @override
  Future<String?> getSmsCode() async {
    // App signature for backend
    final signature = await smartAuth.getAppSignature();
    debugPrint("App Signature: $signature");

    // Start SMS User Consent API
    // final response = await smartAuth.startSmsUserConsentApi();

    // if (!response.succeed) return null;
    //
    // final sms = response.sms ?? "";
    // return _extractOtp(sms);
  }

  @override
  bool get listenForMultipleSms => false;

  // Extract first 6-digit OTP
  String? _extractOtp(String sms) {
    final regex = RegExp(r'\d{6}');
    final match = regex.firstMatch(sms);
    return match?.group(0);
  }
}
