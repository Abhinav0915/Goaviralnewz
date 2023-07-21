import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:goaviralnews/features/navigation/screens/photo_gallery.dart';
import 'package:goaviralnews/features/navigation/screens/search.dart';
import 'package:goaviralnews/features/navigation/screens/slider.dart';
import 'package:goaviralnews/globalVariables.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../size_config.dart';
import '../widgets/trending.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  static const String routName = "/dashboard-page";

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  String selectedAvatar = "assets/icons/addstory.png";
  int _currentIndex = 0;
  final List<Map<String, dynamic>> items = [
    {
      'title': 'Goa Tour',
      'image': 'assets/images/2.png',
      'route': '/goatour-page',
    },
    {
      'title': 'Clubs',
      'image': 'assets/images/6.png',
      'route': '/club-page',
    },
    {
      'title': 'Stay',
      'image': 'assets/images/3.png',
      'route': '/hotels-page',
    },
    {
      'title': 'Food',
      'image': 'assets/images/5.png',
      'route': '/restaurant-page',
    },
    {
      'title': 'Offbeat',
      'image': 'assets/images/4.png',
      'route': '/offbeat-page',
    },
    {
      'title': 'Events',
      'image': 'assets/images/7.png',
      'route': '/offbeat-page',
    },
    {
      'title': 'Historical',
      'image': 'assets/images/9.png',
      'route': '/historical-page',
    },
    {
      'title': 'Adventure',
      'image': 'assets/images/8.png',
      'route': '/adventure-page',
    },
    {
      'title': 'Market',
      'image': 'assets/images/markett.png',
      'route': '/market-page',
    },
  ];
  // PageController _pageController = PageController(initialPage: 0);
  // Timer? _timer;

  // @override
  // void initState() {
  //   super.initState();
  //   _startAutoSlide();
  // }

  // void _startAutoSlide() {
  //   _timer = Timer.periodic(Duration(seconds: 3), (Timer timer) {
  //     if (_currentIndex < 5) {
  //       _currentIndex++;
  //     } else {
  //       _currentIndex = 0;
  //     }
  //     _pageController.animateToPage(
  //       _currentIndex,
  //       duration: Duration(milliseconds: 300),
  //       curve: Curves.easeInOut,
  //     );
  //   });
  // }

// Default avatar path

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double width = SizeConfig.screenW!;
    double height = SizeConfig.screenH!;
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.grey, // Set your desired color for the status bar
    ));

    return WillPopScope(
      onWillPop: () async {
        SystemNavigator.pop(); // Close the app when back button is pressed
        return true;
      },
      child: Scaffold(
        backgroundColor: GlobalVariables.backgroundColor,
        bottomNavigationBar: Container(
          height: 80,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25.0),
              topRight: Radius.circular(25.0),
            ),
          ),
          child: Container(
            padding: const EdgeInsets.only(left: 10, right: 10),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25.0),
                topRight: Radius.circular(25.0),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      _currentIndex = 0;
                    });
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DashboardPage()),
                    );
                  },
                  icon: const Icon(Icons.home),
                  color: _currentIndex == 0 ? Colors.blue : Colors.grey,
                  tooltip: "Home",
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      _currentIndex = 1;
                    });
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SearchPage()),
                    );
                  },
                  icon: const Icon(Icons.search),
                  color: _currentIndex == 1 ? Colors.blue : Colors.grey,
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      _currentIndex = 2;
                    });
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PhotoGalleryScreen(),
                      ),
                    );
                  },
                  icon: const Icon(Icons.bookmark),
                  color: _currentIndex == 2 ? Colors.blue : Colors.grey,
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      _currentIndex = 3;
                    });
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SliderPage()),
                    );
                  },
                  icon: const Icon(Icons.person_2),
                  color: _currentIndex == 3 ? Colors.blue : Colors.grey,
                ),
              ],
            ),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            padding: const EdgeInsets.fromLTRB(15, 10, 10, 0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // ignore: prefer_const_constructors
                        // SizedBox(
                        //   width: width * 0.025,
                        // ),
                        GestureDetector(
                          child: Container(
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  spreadRadius: 1,
                                  blurRadius: 4,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                            ),
                            child: Center(
                              child: Image.asset("assets/icons/addstory.png",
                                  width: 40, height: 40),
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              PageRouteBuilder(
                                transitionDuration: Duration(
                                    milliseconds:
                                        500), // Adjust the duration as needed
                                pageBuilder: (BuildContext context,
                                    Animation<double> animation,
                                    Animation<double> secondaryAnimation) {
                                  return SliderPage(); // Replace with your destination page widget
                                },
                                transitionsBuilder: (BuildContext context,
                                    Animation<double> animation,
                                    Animation<double> secondaryAnimation,
                                    Widget child) {
                                  return SlideTransition(
                                    position: Tween<Offset>(
                                      begin: Offset(1.0,
                                          0.0), // Start the page from the right side of the screen
                                      end: Offset.zero,
                                    ).animate(animation),
                                    child: child,
                                  );
                                },
                              ),
                            );
                          },
                        ),
                        SizedBox(
                          width: width * 0.05,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text("Hi,",
                                    style: GoogleFonts.poppins(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 24, 70, 105))),
                                SizedBox(
                                  width: width * 0.02,
                                ),
                                Text(
                                  "Abhinav",
                                  style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.underline,
                                      color: Color.fromARGB(255, 24, 70, 105)),
                                ),
                                Text("👋",
                                    style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    )),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: Colors.black,
                                  size: 12,
                                ),
                                Text("Knowledge Park 3, Greater Noida, India",
                                    style: GoogleFonts.poppins(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                    )),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                    Icon(
                      CupertinoIcons.bell,
                      color: Colors.black,
                      size: 30,
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                SingleChildScrollView(
                  padding: const EdgeInsets.all(1),
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  child: Wrap(
                    spacing: width * 0.05,
                    children: const [
                      Trending(
                        name: "Trending",
                        iconData: Icons.favorite,
                        imageData: "assets/images/logo.png",
                        width: 10,
                        gap: 0,
                      ),
                      Trending(
                        name: "Trending",
                        iconData: Icons.favorite,
                        imageData: "assets/images/beaches.jpg",
                        width: 10,
                        gap: 10,
                      ),
                      Trending(
                        name: "Trending",
                        iconData: Icons.favorite,
                        imageData: "assets/images/hotelsss.jpg",
                        width: 10,
                        gap: 0,
                      ),
                      Trending(
                        name: "Trending",
                        iconData: Icons.favorite,
                        imageData: "assets/images/calm.jpg",
                        width: 10,
                        gap: 10,
                      ),
                      Trending(
                        name: "Beach",
                        iconData: Icons.favorite,
                        imageData: "assets/images/sunsett.jpg",
                        width: 10,
                        gap: 10,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.015,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 5),
                  child: Container(
                    height: 48,
                    padding: const EdgeInsets.fromLTRB(15, 5, 10, 3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.grey.shade200,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                              context,
                              "/customtrip-page",
                            );
                          },
                          child: const Text(
                            "Get your personalised trip plan",
                            style: TextStyle(
                              fontFamily: 'ComicSans',
                              overflow: TextOverflow.ellipsis,
                              color: Colors.grey,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(
                              CupertinoIcons.search,
                              color: Colors.grey,
                            ),
                            Container(
                              width: 1,
                              height: 24,
                              color: Colors.grey,
                              margin: const EdgeInsets.symmetric(horizontal: 8),
                            ),
                            const Icon(
                              Icons.mic,
                              color: Colors.blue,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                SingleChildScrollView(
                  padding: const EdgeInsets.only(left: 5),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      for (int index = 0; index < items.length; index++)
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, items[index]['route']);
                              },
                              child: Container(
                                height: 77,
                                width: 72,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.grey.shade200,
                                  // Add boxShadow if needed
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: PhysicalModel(
                                    color: Colors.transparent,
                                    shadowColor: Colors.black,
                                    borderRadius: BorderRadius.circular(5),
                                    child: Container(
                                      width: 80,
                                      height: 80,
                                      child: Image.asset(
                                        items[index]['image'],
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 7),
                            Text(
                              items[index]['title'],
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            if (index < items.length - 1)
                              SizedBox(width: width * 0.23),
                          ],
                        ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Container(
                  height: 75,
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: const Color(0xFFE8ECF4),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade400.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 8,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    const ImageIcon(
                                      AssetImage("assets/icons/instagram.png"),
                                      color: Colors.pink,
                                      size: 12,
                                    ),
                                    SizedBox(
                                      width: width * 0.025,
                                    ),
                                    Text(
                                      "Follow us on Instagram",
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                      ),
                                    ),
                                    SizedBox(
                                      width: width * 0.025,
                                    ),
                                    GestureDetector(
                                      child: Container(
                                        height: 20,
                                        width: 30,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Colors.blue,
                                        ),
                                        child: const Center(
                                          child: Icon(
                                            Icons.arrow_forward,
                                            size: 15,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Text(
                                  "Share your reels with us and attract Discount",
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey,
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: width * 0.025,
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      Container(
                        padding: EdgeInsets.only(right: width * 0.05),
                        child: Transform.scale(
                          scale: 6, // Adjust the scale factor as desired
                          child: Image.asset(
                            "assets/images/gift.png",
                            width: 24,
                            height: 24,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Row(
                  children: [
                    Text("Hot Locations 🔥",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                        )),
                  ],
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 159,
                        width: 165,
                        padding: EdgeInsets.symmetric(
                          horizontal: width * 0.05,
                          vertical: height * 0.015,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            ),
                          ],
                          image: const DecorationImage(
                            image: AssetImage("assets/images/liveevents.png"),
                            fit: BoxFit.cover,
                          ),
                          color: const Color(0xFF6CD3FF),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text("Parties",
                                    style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    )),
                              ],
                            ),
                            SizedBox(
                              height: height * 0.006,
                            ),
                            Row(
                              children: [
                                Text("Live \nEvents",
                                    style: GoogleFonts.poppins(
                                      fontSize: 25,
                                      letterSpacing: 2,
                                      height: 1,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    )),
                              ],
                            ),
                            const Row(
                              children: [
                                Text("#trending",
                                    style: TextStyle(
                                      fontFamily: 'ComicSans',
                                      fontSize: 12,
                                      color: Colors.white,
                                    )),
                              ],
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 30,
                                  width: 100,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      padding: const EdgeInsets.only(
                                          left: 10, right: 10),
                                      backgroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: Text(
                                      "Visit Place",
                                      style: GoogleFonts.poppins(
                                        color: Color(0xFF167CC0),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: width * 0.04,
                      ),
                      Container(
                        height: 159,
                        width: 165,
                        padding: EdgeInsets.symmetric(
                          horizontal: width * 0.05,
                          vertical: height * 0.015,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            ),
                          ],
                          image: const DecorationImage(
                            image: AssetImage("assets/images/sunrise.png"),
                            fit: BoxFit.cover,
                          ),
                          color: const Color(0xFF6CD3FF),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text("Sunrise",
                                    style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    )),
                              ],
                            ),
                            SizedBox(
                              height: height * 0.006,
                            ),
                            Row(
                              children: [
                                Text("Best\nChoice",
                                    style: GoogleFonts.poppins(
                                      fontSize: 25,
                                      letterSpacing: 2,
                                      height: 1,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    )),
                              ],
                            ),
                            const Row(
                              children: [
                                Text("#morningmood",
                                    style: TextStyle(
                                      fontFamily: 'ComicSans',
                                      fontSize: 12,
                                      color: Colors.white,
                                    )),
                              ],
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 30,
                                  width: 100,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      padding: const EdgeInsets.only(
                                          left: 10, right: 10),
                                      backgroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: Text(
                                      "Visit Place",
                                      style: GoogleFonts.poppins(
                                        color: Color(0xFF167CC0),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: width * 0.04,
                      ),
                      Container(
                        height: 159,
                        width: 165,
                        padding: EdgeInsets.symmetric(
                          horizontal: width * 0.05,
                          vertical: height * 0.015,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            ),
                          ],
                          image: const DecorationImage(
                            image: AssetImage("assets/images/evening.png"),
                            fit: BoxFit.cover,
                          ),
                          color: const Color(0xFF6CD3FF),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text("Evening",
                                    style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    )),
                              ],
                            ),
                            SizedBox(
                              height: height * 0.006,
                            ),
                            Row(
                              children: [
                                Text("Best \nChoice",
                                    style: GoogleFonts.poppins(
                                      fontSize: 25,
                                      letterSpacing: 2,
                                      height: 1,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    )),
                              ],
                            ),
                            const Row(
                              children: [
                                Text("#walkingtime",
                                    style: TextStyle(
                                      fontFamily: 'ComicSans',
                                      fontSize: 12,
                                      color: Colors.white,
                                    )),
                              ],
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 30,
                                  width: 100,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      padding: const EdgeInsets.only(
                                          left: 10, right: 10),
                                      backgroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: Text(
                                      "Visit Place",
                                      style: GoogleFonts.poppins(
                                        color: Color(0xFF167CC0),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text("Check out some amazing services",
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                      )),
                ),
                SizedBox(
                  height: height * 0.015,
                ),
                SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 160,
                        width: 350,
                        padding: const EdgeInsets.only(left: 30),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            ),
                          ],
                          gradient: const LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              Colors.orange,
                              Colors.black,
                            ],
                          ),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "GET ",
                                    style: GoogleFonts.poppins(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    "50% OFF",
                                    style: GoogleFonts.poppins(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    height: height * 0.005,
                                  ),
                                  Text(
                                    "On Drink's specials",
                                    style: GoogleFonts.poppins(
                                      fontSize: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          "from",
                                          style: GoogleFonts.poppins(
                                            fontSize: 15,
                                            color: Colors.white,
                                            fontStyle: FontStyle.italic,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 0.5,
                                        ),
                                        Text(
                                          "Tito's Bar and Club",
                                          style: GoogleFonts.poppins(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w900,
                                            color: Colors.white,
                                            fontStyle: FontStyle.italic,
                                          ),
                                        ),
                                      ]),
                                  SizedBox(
                                    height: height * 0.0002,
                                  ),
                                ],
                              ),
                            ),
                            Image.asset(
                              'assets/images/beer.png', // Replace with the actual path to your image
                              width: 150,
                              height: 150,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: width * 0.04,
                      ),
                      Container(
                        height: 160,
                        width: 350,
                        padding: const EdgeInsets.only(left: 30),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            ),
                          ],
                          gradient: const LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              Color(0xFF00704A),
                              Color(0xFF005540),
                            ],
                          ),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "GET ",
                                    style: GoogleFonts.poppins(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    "50% OFF",
                                    style: GoogleFonts.poppins(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    height: height * 0.005,
                                  ),
                                  Text(
                                    "On breakfast specials",
                                    style: GoogleFonts.poppins(
                                      fontSize: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Row(children: [
                                    Text(
                                      "from",
                                      style: GoogleFonts.poppins(
                                        fontSize: 15,
                                        color: Colors.white,
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                    SizedBox(
                                      width: width * 0.01,
                                    ),
                                    Text(
                                      "Starbucks",
                                      style: GoogleFonts.poppins(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w900,
                                        color: Colors.white,
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                  ]),
                                  SizedBox(
                                    height: height * 0.0002,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: width * 0.05),
                              child: Image.asset(
                                'assets/images/starbucks.png', // Replace with the actual path to your image
                                width: 110,
                                height: 150,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.035,
                ),
                Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Container(
                            height: 200,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(10)),
                              image: DecorationImage(
                                image: AssetImage(
                                  'assets/images/hotelsss.jpg',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              padding: const EdgeInsets.all(3),
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.white,
                              ),
                              child: const Center(
                                child: Icon(
                                  CupertinoIcons.heart_fill,
                                  color: Colors.red,
                                  size: 28,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Curlies ZuluLand Cottages",
                                  style: GoogleFonts.poppins(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Row(
                                  children: [
                                    const Icon(Icons.star,
                                        color: Colors.yellow),
                                    SizedBox(width: width * 0.01),
                                    Text(
                                      "4.8",
                                      style: GoogleFonts.poppins(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Text(
                              "Monterio Vaddo, Anjuna, Goa 403509",
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(height: height * 0.02),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "₹1,200",
                                  style: GoogleFonts.poppins(
                                    color: Colors.blue,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "/night",
                                  style: GoogleFonts.poppins(
                                    fontSize: 15,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
