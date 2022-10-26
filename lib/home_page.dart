import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:travel_app/place_details.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late bool _isBeachSelected;

  @override
  void initState() {
    _isBeachSelected = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.white),
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Hello message
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 32,
                            height: 32,
                            decoration: const BoxDecoration(
                              color: Color(0xFFD9D9D9),
                              shape: BoxShape.circle,
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            'Hello, Vineetha',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
                      const Icon(Icons.notifications)
                    ],
                  ),
                ),
                // Title
                const Padding(
                  padding: EdgeInsets.only(left: 20, right: 20, top: 30),
                  child: SizedBox(
                    width: 279,
                    child: Text(
                      'Where do you want to explore today?',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                // Search Bar
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20, top: 30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black.withOpacity(0.03),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      hintStyle: TextStyle(
                        fontSize: 16,
                        color: Colors.black.withOpacity(0.2),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                // Choose Category text
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Choose Category',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'See All',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black.withOpacity(0.25),
                        ),
                      ),
                    ],
                  ),
                ),
                // All Categories
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _isBeachSelected = true;
                          });
                        },
                        child: Container(
                          width: 150,
                          padding: const EdgeInsets.only(top: 10, bottom: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Color(
                                _isBeachSelected ? 0xFF5DC720 : 0xFFDADADA,
                              ),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  image: const DecorationImage(
                                    image: AssetImage('img/tree.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              const Text(
                                'Beach',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _isBeachSelected = false;
                          });
                        },
                        child: Container(
                          width: 150,
                          padding: const EdgeInsets.only(top: 10, bottom: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Color(
                                _isBeachSelected ? 0xFFDADADA : 0xFF5DC720,
                              ),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  image: const DecorationImage(
                                    image: AssetImage('img/mountain.webp'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              const Text(
                                'Mountain',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Card List
                if (_isBeachSelected)
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 30),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const PlaceDetails(
                                    title: 'Kuta Beach',
                                    description:
                                        'One of the most happening beaches in Goa, '
                                        'Baga Beach is where you will find water sports,'
                                        ' fine dining restaurants, bars, and clubs. '
                                        'Situated in North Goa, '
                                        'Baga Beach is bordered by Calangute and '
                                        'Anjuna Beaches.',
                                    rating: '4.2',
                                    amount: '₹15,000/person',
                                    location: 'Goa , India',
                                    image: 'img/kuta_beach.png',
                                  ),
                                ),
                              );
                            },
                            child: Stack(
                              children: [
                                Container(
                                  height: 230,
                                  width: 186,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: const DecorationImage(
                                      image: AssetImage('img/kuta_beach.png'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Padding(
                                            padding: EdgeInsets.only(top: 135),
                                            child: Text(
                                              'Kuta Beach',
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 15),
                                          Row(
                                            children: const [
                                              Icon(
                                                Icons.location_on_outlined,
                                                size: 15,
                                                color: Colors.white,
                                              ),
                                              SizedBox(width: 5),
                                              Text(
                                                'Bali, Indonesia',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              )
                                            ],
                                          ),
                                          const SizedBox(height: 7),
                                          Row(
                                            children: const [
                                              Icon(
                                                Icons.star,
                                                size: 14,
                                                color: Color(0xFFFCD240),
                                              ),
                                              SizedBox(width: 2),
                                              Icon(
                                                Icons.star,
                                                size: 14,
                                                color: Color(0xFFFCD240),
                                              ),
                                              SizedBox(width: 2),
                                              Icon(
                                                Icons.star,
                                                size: 14,
                                                color: Color(0xFFFCD240),
                                              ),
                                              SizedBox(width: 2),
                                              Icon(
                                                Icons.star,
                                                size: 14,
                                                color: Color(0xFFFCD240),
                                              ),
                                              SizedBox(width: 2),
                                              Icon(
                                                Icons.star,
                                                size: 14,
                                                color: Colors.white,
                                              ),
                                              SizedBox(width: 2),
                                              Text(
                                                '4.2',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 32,
                                      width: 32,
                                      margin: const EdgeInsets.only(
                                          top: 15, left: 15),
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                      ),
                                      child: const Icon(
                                        Icons.favorite_rounded,
                                        color: Color(0xFFFD5B1F),
                                        size: 17,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 30),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const PlaceDetails(
                                    title: 'Baga Beach',
                                    description:
                                        'One of the most happening beaches in Goa, '
                                        'Baga Beach is where you will find water sports,'
                                        ' fine dining restaurants, bars, and clubs. '
                                        'Situated in North Goa, Baga Beach is bordered '
                                        'by Calangute and Anjuna Beaches.',
                                    rating: '4.8',
                                    amount: '₹15,000/person',
                                    location: 'Goa , India',
                                    image: 'img/beach1.png',
                                  ),
                                ),
                              );
                            },
                            child: Stack(
                              children: [
                                Container(
                                  height: 230,
                                  width: 186,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: const DecorationImage(
                                      image: AssetImage('img/beach1.png'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Padding(
                                            padding: EdgeInsets.only(top: 135),
                                            child: Text(
                                              'Baga Beach',
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 15),
                                          Row(
                                            children: const [
                                              Icon(
                                                Icons.location_on_outlined,
                                                size: 15,
                                                color: Colors.white,
                                              ),
                                              SizedBox(width: 5),
                                              Text(
                                                'Goa , India',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              )
                                            ],
                                          ),
                                          const SizedBox(height: 7),
                                          Row(
                                            children: const [
                                              Icon(
                                                Icons.star,
                                                size: 14,
                                                color: Color(0xFFFCD240),
                                              ),
                                              SizedBox(width: 2),
                                              Icon(
                                                Icons.star,
                                                size: 14,
                                                color: Color(0xFFFCD240),
                                              ),
                                              SizedBox(width: 2),
                                              Icon(
                                                Icons.star,
                                                size: 14,
                                                color: Color(0xFFFCD240),
                                              ),
                                              SizedBox(width: 2),
                                              Icon(
                                                Icons.star,
                                                size: 14,
                                                color: Color(0xFFFCD240),
                                              ),
                                              SizedBox(width: 2),
                                              Icon(
                                                Icons.star,
                                                size: 14,
                                                color: Colors.white,
                                              ),
                                              SizedBox(width: 2),
                                              Text(
                                                '4.8',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 32,
                                      width: 32,
                                      margin: const EdgeInsets.only(
                                          top: 15, left: 15),
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                      ),
                                      child: const Icon(
                                        Icons.favorite_outline_rounded,
                                        // color: Color(0xFFFD5B1F),
                                        size: 17,
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
                  ),
                if (!_isBeachSelected)
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 30),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const PlaceDetails(
                                    title: 'Mount Arvon',
                                    description:
                                        'Mount Arvon, elevation 1,979 feet (603 m), '
                                        'is the highest natural point in the U.S. state of '
                                        'Michigan. Located in L\'Anse Township, Baraga County, '
                                        'Mount Arvon is part of the Huron Mountains',
                                    rating: '4.2',
                                    amount: '₹25,000/person',
                                    location: 'Michigan , U.S.',
                                    image: 'img/mountain.webp',
                                  ),
                                ),
                              );
                            },
                            child: Stack(
                              children: [
                                Container(
                                  height: 230,
                                  width: 186,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: const DecorationImage(
                                      image: AssetImage('img/mountain.webp'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Padding(
                                            padding: EdgeInsets.only(top: 135),
                                            child: Text(
                                              'Mount Arvon',
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 15),
                                          Row(
                                            children: const [
                                              Icon(
                                                Icons.location_on_outlined,
                                                size: 15,
                                                color: Colors.white,
                                              ),
                                              SizedBox(width: 5),
                                              Text(
                                                'Michigan, U.S.',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              )
                                            ],
                                          ),
                                          const SizedBox(height: 7),
                                          Row(
                                            children: const [
                                              Icon(
                                                Icons.star,
                                                size: 14,
                                                color: Color(0xFFFCD240),
                                              ),
                                              SizedBox(width: 2),
                                              Icon(
                                                Icons.star,
                                                size: 14,
                                                color: Color(0xFFFCD240),
                                              ),
                                              SizedBox(width: 2),
                                              Icon(
                                                Icons.star,
                                                size: 14,
                                                color: Color(0xFFFCD240),
                                              ),
                                              SizedBox(width: 2),
                                              Icon(
                                                Icons.star,
                                                size: 14,
                                                color: Color(0xFFFCD240),
                                              ),
                                              SizedBox(width: 2),
                                              Icon(
                                                Icons.star,
                                                size: 14,
                                                color: Colors.white,
                                              ),
                                              SizedBox(width: 2),
                                              Text(
                                                '4.2',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 32,
                                      width: 32,
                                      margin: const EdgeInsets.only(
                                          top: 15, left: 7),
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                      ),
                                      child: const Icon(
                                        Icons.favorite_rounded,
                                        color: Color(0xFFFD5B1F),
                                        size: 17,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 30),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const PlaceDetails(
                                    title: 'Mount Elbert',
                                    description:
                                        'Mount Elbert, mountain in Lake county, '
                                        'west-central Colorado, U.S., whose peak '
                                        'is the highest point '
                                        '(14,440 feet [4,401 metres]) '
                                        'in Colorado and in the American Rocky '
                                        'Mountains',
                                    rating: '4.4',
                                    amount: '₹30,000/person',
                                    location: 'Colorado, America',
                                    image: 'img/mountain2.webp',
                                  ),
                                ),
                              );
                            },
                            child: Stack(
                              children: [
                                Container(
                                  height: 230,
                                  width: 186,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: const DecorationImage(
                                      image: AssetImage('img/mountain2.webp'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Padding(
                                            padding: EdgeInsets.only(top: 135),
                                            child: Text(
                                              'Mount Elbert',
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 15),
                                          Row(
                                            children: const [
                                              Icon(
                                                Icons.location_on_outlined,
                                                size: 15,
                                                color: Colors.white,
                                              ),
                                              SizedBox(width: 5),
                                              Text(
                                                'Colorado, America',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              )
                                            ],
                                          ),
                                          const SizedBox(height: 7),
                                          Row(
                                            children: const [
                                              Icon(
                                                Icons.star,
                                                size: 14,
                                                color: Color(0xFFFCD240),
                                              ),
                                              SizedBox(width: 2),
                                              Icon(
                                                Icons.star,
                                                size: 14,
                                                color: Color(0xFFFCD240),
                                              ),
                                              SizedBox(width: 2),
                                              Icon(
                                                Icons.star,
                                                size: 14,
                                                color: Color(0xFFFCD240),
                                              ),
                                              SizedBox(width: 2),
                                              Icon(
                                                Icons.star,
                                                size: 14,
                                                color: Color(0xFFFCD240),
                                              ),
                                              SizedBox(width: 2),
                                              Icon(
                                                Icons.star,
                                                size: 14,
                                                color: Colors.white,
                                              ),
                                              SizedBox(width: 2),
                                              Text(
                                                '4.4',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 32,
                                      width: 32,
                                      margin: const EdgeInsets.only(
                                          top: 15, left: 7),
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                      ),
                                      child: const Icon(
                                        Icons.favorite_outline_rounded,
                                        // color: Color(0xFFFD5B1F),
                                        size: 17,
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
                  ),
                // Popular Package Text
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Popular Package',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'See All',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black.withOpacity(0.25),
                        ),
                      ),
                    ],
                  ),
                ),
                // Popular Packages
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PlaceDetails(
                          title: 'Kuta Beach',
                          description:
                              'One of the most happening beaches in Goa, '
                              'Baga Beach is where you will find water sports,'
                              ' fine dining restaurants, bars, and clubs. '
                              'Situated in North Goa, '
                              'Baga Beach is bordered by Calangute and '
                              'Anjuna Beaches.',
                          rating: '4.8',
                          amount: '₹15,000/person',
                          location: 'Goa , India',
                          image: 'img/kuta_beach.png',
                        ),
                      ),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.only(left: 20, right: 20, top: 30),
                    padding:
                        const EdgeInsets.only(top: 20, right: 20, left: 20),
                    height: 170,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: const Color(
                          0xFFDADADA,
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(right: 10),
                              height: 120,
                              width: 95,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                  image: AssetImage('img/kuta_beach.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 4),
                                const Text(
                                  'Kuta Resort',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 15),
                                const Text(
                                  '₹20,000',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color(
                                      0xFFFD5B1F,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.star,
                                      size: 14,
                                      color: Color(0xFFFCD240),
                                    ),
                                    SizedBox(width: 2),
                                    Icon(
                                      Icons.star,
                                      size: 14,
                                      color: Color(0xFFFCD240),
                                    ),
                                    SizedBox(width: 2),
                                    Icon(
                                      Icons.star,
                                      size: 14,
                                      color: Color(0xFFFCD240),
                                    ),
                                    SizedBox(width: 2),
                                    Icon(
                                      Icons.star,
                                      size: 14,
                                      color: Color(0xFFFCD240),
                                    ),
                                    SizedBox(width: 2),
                                    Icon(
                                      Icons.star,
                                      size: 14,
                                      color: Color(0xFFF3F3F3),
                                    ),
                                    SizedBox(width: 2),
                                    Text(
                                      '4.8',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(height: 8),
                                const SizedBox(
                                  width: 180,
                                  child: Text(
                                    'A resort is a place used for vacation, relaxation or as a day ddadscdafeas',
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Icon(
                          Icons.favorite_outline_rounded,
                          size: 21,
                        ),
                      ],
                    ),
                  ),
                ),
                // Popular Packages
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PlaceDetails(
                          title: 'Baga Beach',
                          description:
                              'One of the most happening beaches in Goa, '
                              'Baga Beach is where you will find water sports,'
                              ' fine dining restaurants, bars, and clubs. '
                              'Situated in North Goa, Baga Beach is bordered '
                              'by Calangute and Anjuna Beaches.',
                          rating: '4.8',
                          amount: '₹15,000/person',
                          location: 'Goa , India',
                          image: 'img/beach1.png',
                        ),
                      ),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                    padding:
                        const EdgeInsets.only(top: 20, right: 20, left: 20),
                    height: 170,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: const Color(
                          0xFFDADADA,
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(right: 10),
                              height: 120,
                              width: 95,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                  image: AssetImage('img/beach1.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 4),
                                const Text(
                                  'Baga Beach Resort',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 15),
                                const Text(
                                  '₹15,000',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color(
                                      0xFFFD5B1F,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.star,
                                      size: 14,
                                      color: Color(0xFFFCD240),
                                    ),
                                    SizedBox(width: 2),
                                    Icon(
                                      Icons.star,
                                      size: 14,
                                      color: Color(0xFFFCD240),
                                    ),
                                    SizedBox(width: 2),
                                    Icon(
                                      Icons.star,
                                      size: 14,
                                      color: Color(0xFFFCD240),
                                    ),
                                    SizedBox(width: 2),
                                    Icon(
                                      Icons.star,
                                      size: 14,
                                      color: Color(0xFFFCD240),
                                    ),
                                    SizedBox(width: 2),
                                    Icon(
                                      Icons.star,
                                      size: 14,
                                      color: Color(0xFFF3F3F3),
                                    ),
                                    SizedBox(width: 2),
                                    Text(
                                      '4.8',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(height: 8),
                                const SizedBox(
                                  width: 180,
                                  child: Text(
                                    'A resort is a place used for vacation, relaxation or as a day ddadscdafeas',
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Icon(
                          Icons.favorite_outline_rounded,
                          size: 21,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
