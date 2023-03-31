import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
            },
            children: [
              _buildOnboardingPage(
                  title: 'Welcome to Godseye',
                  content:
                      'Discover the benefits of tracking virtues and avoiding sins.',
                  image: 'assets/images/intro_1.png'),
              _buildOnboardingPage(
                  title: 'Track Your Virtues',
                  content:
                      'Measure your progress in 2-week cycles, stats, and Soul Score.',
                  image: 'assets/images/intro_2.png'),
              _buildOnboardingPage(
                  title: 'Unlock Rewards',
                  content:
                      'Earn rewards and advance through Soul Ranks as you progress.',
                  image: 'assets/images/intro_3.png'),
              _buildOnboardingPage(
                  title: 'Get Started',
                  content:
                      'Sign up or log in to start tracking your virtues today.',
                  image: 'assets/images/intro_4.png'),
            ],
          ),
          Positioned(
            bottom: 30,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(4, (index) => _buildPageIndicator(index)),
            ),
          ),
          Positioned(
            bottom: 60,
            right: 20,
            child: TextButton(
              onPressed: _currentPage == 3
                  ? null
                  : () {
                      _pageController.animateToPage(_currentPage + 1,
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeIn);
                    },
              child: const Text(
                'Next',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
          Positioned(
            bottom: 60,
            left: 20,
            child: TextButton(
              onPressed: _currentPage == 0
                  ? null
                  : () {
                      _pageController.animateToPage(_currentPage - 1,
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeIn);
                    },
              child: const Text(
                'Back',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildOnboardingPage(
      {required String title, required String content, required String image}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(image),
        const SizedBox(height: 30),
        Text(
          title,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Text(
            content,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 16),
          ),
        ),
      ],
    );
  }

  Widget _buildPageIndicator(int pageIndex) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 2),
      height: _currentPage == pageIndex ? 12 : 8,
      width: _currentPage == pageIndex ? 12 : 8,
      decoration: BoxDecoration(
        color: _currentPage == pageIndex ? Colors.blue : Colors.grey,
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
