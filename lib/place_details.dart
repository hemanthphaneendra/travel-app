import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:travel_app/home_page.dart';

class PlaceDetails extends StatelessWidget {
  const PlaceDetails({
    Key? key,
    required this.title,
    required this.description,
    required this.rating,
    required this.amount,
    required this.location,
    required this.image,
  }) : super(key: key);
  final String title;
  final String description;
  final String rating;
  final String location;
  final String amount;
  final String image;

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Colors.white,
      ),
      child: SafeArea(
        child: Scaffold(
          body: Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const MyHomePage(),
                              ));
                        },
                        child: const Icon(
                          Icons.arrow_back_sharp,
                          size: 18,
                          color: Colors.white,
                        ),
                      ),
                      const Icon(
                        Icons.favorite_outline_rounded,
                        color: Colors.white,
                        size: 20,
                      ),
                    ],
                  ),
                  const Expanded(child: SizedBox()),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.location_on_outlined,
                            size: 15,
                            color: Colors.white,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            location,
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),
                  Text(
                    description,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        size: 14,
                        color: Color(0xFFFCD240),
                      ),
                      const SizedBox(width: 2),
                      const Icon(
                        Icons.star,
                        size: 14,
                        color: Color(0xFFFCD240),
                      ),
                      const SizedBox(width: 2),
                      const Icon(
                        Icons.star,
                        size: 14,
                        color: Color(0xFFFCD240),
                      ),
                      const SizedBox(width: 2),
                      const Icon(
                        Icons.star,
                        size: 14,
                        color: Color(0xFFFCD240),
                      ),
                      const SizedBox(width: 2),
                      const Icon(
                        Icons.star,
                        size: 14,
                        color: Colors.white,
                      ),
                      const SizedBox(width: 2),
                      Text(
                        rating,
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        amount,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 20),
                        child: OutlinedButton(
                          style: ButtonStyle(
                            backgroundColor: ButtonStyleButton.allOrNull<Color>(
                              const Color(0xFFFCD240),
                            ),
                            shape: ButtonStyleButton.allOrNull<OutlinedBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ),
                          child: const Text(
                            "Outline Button",
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF0C0507),
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
