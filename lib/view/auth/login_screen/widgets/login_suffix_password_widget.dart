import 'package:test_app/constants/app_packages.dart';

class LoginSuffixIconWidget extends StatelessWidget {
  const LoginSuffixIconWidget({
    super.key,
    required this.controller,
  });

  final LoginController controller;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          controller.visibilty();
        },
        icon: controller.isVisibilty
            ? const Icon(Icons.visibility_off, color: Colors.grey)
            : const Icon(Icons.visibility, color: Colors.grey));
  }
}
