// ignore_for_file: must_be_immutable

import 'package:test_app/constants/app_packages.dart';

class LoginFormsWidget extends StatelessWidget {
  LoginController loginController = Get.put(LoginController());
  LoginFormsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTextFormField(
            label: "Username or Email",
            //  labelPadding: 15,
            textDirection: TextDirection.ltr,
            controller: loginController.usernameController,
            prefixIcon:
                Icon(Icons.person_2_outlined, color: AppColors.thirdColor),
            validator: (value) => FieldsValidators.userNameValidator(value),
            hintText: "yamen"),
        const VerticalSizedBox(16),
        GetBuilder<LoginController>(
            init: LoginController(),
            builder: (context) {
              return CustomTextFormField(
                  label: "Password",
                  // labelPadding: 15,
                  textDirection: TextDirection.ltr,
                  controller: loginController.passwordController,
                  prefixIcon: Icon(Icons.lock_outline_rounded,
                      color: AppColors.thirdColor),
                  validator: (value) =>
                      FieldsValidators.passwordValidator(value),
                  obscure: loginController.isVisibilty ? false : true,
                  hintText: "test@test.com",
                  suffixIcon:
                      LoginSuffixIconWidget(controller: loginController));
            }),
        LoginRememberPasswordWidget(
          controller: loginController,
        )
      ],
    );
  }
}
