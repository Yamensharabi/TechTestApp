import 'package:test_app/constants/app_packages.dart';

class LoginScreen extends GetView<LoginController> {
  LoginController loginController = Get.put(LoginController());
  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 1,
        centerTitle: true,
        backgroundColor: AppColors.mainColor,
        title: CustomText(
            text: "Login",
            textStyle: context.textTheme.bodyLarge!
                .copyWith(color: AppColors.white, fontSize: 22)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const VerticalSizedBox(50),
              const LoginHeadWidget(),
              const VerticalSizedBox(80),
              LoginFormsWidget(),
              const VerticalSizedBox(130),
              LoginButtonWidget(
                controller: loginController,
              ),
              const VerticalSizedBox(30),
            ],
          ),
        ),
      ),
    );
  }
}
