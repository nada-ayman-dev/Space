import 'package:flutter/material.dart';
import '/core/constants/app_colors.dart';
import '/core/widgets/top_background.dart';
import '/core/constants/app_images.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Map<String, String>> planets = [
    {"name": "Mercury", "image": AppImages.mercury},
    {"name": "Earth", "image": AppImages.earth},
    {"name": "Mars", "image": AppImages.mars},
    {"name": "Jupiter", "image": AppImages.jupiter},
    {"name": "Saturn", "image": AppImages.saturn},
    {"name": "Uranus", "image": AppImages.uranus},
    {"name": "Neptune", "image": AppImages.neptune},
  ];

  int currentIndex = 1; // يبدأ بـ Earth

  void previousPlanet() {
    setState(() {
      currentIndex = (currentIndex - 1 + planets.length) % planets.length;
    });
  }

  void nextPlanet() {
    setState(() {
      currentIndex = (currentIndex + 1) % planets.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentPlanet = planets[currentIndex];

    return Scaffold(
      body: Stack(
        children: [


          const TopImageLabelWidget(label: "Explore"),


          Positioned(
            top: 185,
            left: 20,
            child: SizedBox(
              width: 286,
              height: 72,
              child: const Text(
                "Which planet would you like to explore?",
                style: TextStyle(
                  fontFamily: 'Space Grotesk',
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                  height: 36 / 24,
                  letterSpacing: -0.03,
                  color: AppColors.text,
                ),
              ),
            ),
          ),

          Positioned(
            bottom: 100,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [


                IconButton(
                  onPressed: previousPlanet,
                  icon: Container(
                    width: 43,
                    height: 43,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.buttons,
                    ),
                    child: const Icon(Icons.arrow_back, color: Colors.white),
                  ),
                ),

                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      print(currentPlanet["name"]);
                    },
                    child: SizedBox(
                      height: 339,
                      width: 542,
                      child: Image.asset(
                        currentPlanet["image"]!,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),

                IconButton(
                  onPressed: nextPlanet,
                  icon: Container(
                    width: 43,
                    height: 43,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.buttons,
                    ),
                    child: const Icon(Icons.arrow_forward, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),


          Positioned(
            bottom: 20,
            left: 20,
            right: 20,
            child: SizedBox(
              height: 60,
              child: ElevatedButton(
                onPressed: () {
                  print("Explore ${currentPlanet["name"]}");
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.buttons,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(29),
                  ),
                ),
                child: Text(
                  "Explore ${currentPlanet["name"]}",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: AppColors.text,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}