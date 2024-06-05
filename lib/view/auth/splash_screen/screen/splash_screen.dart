import 'package:test_app/constants/app_packages.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  double fontSize = 2;
  double containerSize = 1.5;
  double textOpacity = 0.0;
  double containerOpacity = 0.0;

  late AnimationController _controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );

    animation = Tween<double>(begin: 40, end: 20).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.fastLinearToSlowEaseIn,
    ))
      ..addListener(() {
        setState(() {
          textOpacity = 1.0;
        });
      });

    _controller.forward();

    Timer(const Duration(seconds: 1), () {
      setState(() {
        fontSize = 1.2;
      });
    });

    Timer(const Duration(seconds: 1), () {
      setState(() {
        containerSize = 2;
        containerOpacity = 1;
      });
    });

    Timer(const Duration(seconds: 2), () {
      setState(() {
        Get.offNamed(AppRoutes.loginScreen);
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: Stack(
        children: [
          SplashNameAppWidget(
            fontSize: fontSize,
            textOpacity: textOpacity,
            animation: animation,
          ),
          SplashLogoAppWidget(
            containerOpacity: containerOpacity,
            containerSize: containerSize,
          ),
        ],
      ),
    );
  }
}
