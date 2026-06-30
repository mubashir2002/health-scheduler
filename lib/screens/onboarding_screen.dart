import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import 'main_nav_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen>
    with SingleTickerProviderStateMixin {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  late AnimationController _animController;
  late Animation<double> _fadeAnim;

  final List<_OnboardData> _pages = [
    _OnboardData(
      icon: Icons.medical_services_rounded,
      iconColor: const Color(0xFF0077B6),
      title: 'Expert Doctors\nAt Your Fingertips',
      subtitle:
          'Browse hundreds of verified specialists across every medical field, all in one place.',
      gradient: const [Color(0xFFE0F7FA), Color(0xFFB2EBF2)],
    ),
    _OnboardData(
      icon: Icons.calendar_today_rounded,
      iconColor: const Color(0xFF7B2FBE),
      title: 'Book Appointments\nInstantly',
      subtitle:
          'Choose your preferred date, time and doctor. Get confirmed in seconds — no waiting rooms.',
      gradient: const [Color(0xFFF3E5F5), Color(0xFFE1BEE7)],
    ),
    _OnboardData(
      icon: Icons.health_and_safety_rounded,
      iconColor: const Color(0xFF1B5E20),
      title: 'Your Health\nRecords, Safe & Secure',
      subtitle:
          'All your prescriptions, reports and medical history stored securely in your pocket.',
      gradient: const [Color(0xFFE8F5E9), Color(0xFFC8E6C9)],
    ),
  ];

  @override
  void initState() {
    super.initState();
    _animController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 400));
    _fadeAnim =
        Tween<double>(begin: 0.0, end: 1.0).animate(_animController);
    _animController.forward();
  }

  @override
  void dispose() {
    _pageController.dispose();
    _animController.dispose();
    super.dispose();
  }

  void _goToNextPage() {
    if (_currentPage < _pages.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    } else {
      _navigateToHome();
    }
  }

  void _navigateToHome() {
    Navigator.of(context).pushReplacement(
      PageRouteBuilder(
        pageBuilder: (_, __, ___) => const MainNavScreen(),
        transitionsBuilder: (_, anim, __, child) =>
            FadeTransition(opacity: anim, child: child),
        transitionDuration: const Duration(milliseconds: 500),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: _pages.length,
            onPageChanged: (i) => setState(() => _currentPage = i),
            itemBuilder: (ctx, i) => _buildPage(ctx, _pages[i]),
          ),
          // Skip button
          Positioned(
            top: 52,
            right: 24,
            child: GestureDetector(
              onTap: _navigateToHome,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  'Skip',
                  style: TextStyle(
                    color: _pages[_currentPage].iconColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          ),
          // Bottom controls
          Positioned(
            left: 24,
            right: 24,
            bottom: 48,
            child: Column(
              children: [
                // Dots indicator
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    _pages.length,
                    (i) => AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      width: _currentPage == i ? 24 : 8,
                      height: 8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: _currentPage == i
                            ? _pages[_currentPage].iconColor
                            : _pages[_currentPage].iconColor.withOpacity(0.25),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 32),
                // Action button
                SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: ElevatedButton(
                    onPressed: _goToNextPage,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: _pages[_currentPage].iconColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                      elevation: 8,
                      shadowColor:
                          _pages[_currentPage].iconColor.withOpacity(0.4),
                    ),
                    child: Text(
                      _currentPage < _pages.length - 1
                          ? 'Next'
                          : 'Get Started',
                      style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPage(BuildContext context, _OnboardData data) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 400),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: data.gradient,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Column(
            children: [
              const SizedBox(height: 80),
              // Illustration container
              AnimatedContainer(
                duration: const Duration(milliseconds: 400),
                width: 260,
                height: 260,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white.withOpacity(0.6),
                  boxShadow: [
                    BoxShadow(
                      color: data.iconColor.withOpacity(0.15),
                      blurRadius: 50,
                      spreadRadius: 10,
                      offset: const Offset(0, 20),
                    ),
                  ],
                ),
                child: Icon(
                  data.icon,
                  size: 110,
                  color: data.iconColor,
                ),
              ),
              const SizedBox(height: 52),
              Text(
                data.title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF0D1B2A),
                  height: 1.3,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                data.subtitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  color: const Color(0xFF0D1B2A).withOpacity(0.6),
                  height: 1.6,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _OnboardData {
  final IconData icon;
  final Color iconColor;
  final String title;
  final String subtitle;
  final List<Color> gradient;

  _OnboardData({
    required this.icon,
    required this.iconColor,
    required this.title,
    required this.subtitle,
    required this.gradient,
  });
}
