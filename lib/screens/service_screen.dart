import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:suvaye/widgets/custom_bottom_navbar.dart';
import 'package:suvaye/widgets/outline_card.dart';


class ServiceScreen extends StatefulWidget {
  const ServiceScreen({super.key});

  @override
  State<ServiceScreen> createState() => _ServiceScreenState();
}

class _ServiceScreenState extends State<ServiceScreen> {
  var _slideIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 40.0,
                    height: 40.0,
                    color: Colors.amber,
                    child: Image.asset(
                      "images/Suvaye-logo.jpg",
                      fit: BoxFit.fill,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Suvaye",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.notifications_none_outlined),
              )
            ],
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          controller: ScrollController(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10.0),
                const Text(
                  "Hello, Suvaye Tech",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF371B34),
                  ),
                ),
                const SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Services",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Row(
                        children: [
                          Text(
                            "See more",
                            style: TextStyle(
                              color: Color(0xFF027A48),
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Icon(
                            Icons.chevron_right,
                            color: Color(0xFF027A48),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10.0),
                Container(
                  height: 140,
                  color: Colors.white,
                  child: PageView.builder(
                    itemBuilder: (context, index) {
                      return Container(
                        height: 128,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.0),
                          color: const Color(0xFFECFDF3),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 40.0, vertical: 20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "App Development",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF344054)),
                              ),
                              SizedBox(height: 16.0),
                              Text(
                                "Develop beautiful fast mobile applications",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF000000)),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    reverse: true,
                    physics: const BouncingScrollPhysics(),
                    onPageChanged: (value) {
                      setState(() {
                        _slideIndex = value;
                      });
                    },
                  ),
                ),
                const SizedBox(height: 8.0),
                SizedBox(
                  height: 30.0,
                  width: 250,
                  
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      reverse: true,
                      itemBuilder: ((context, index) {
                        return Padding(
                          padding:  const EdgeInsets.all(8.0),
                          child: Container(
                            height: 20.0,
                            width: 20.0,
                            decoration:  BoxDecoration(
                              color: index == _slideIndex? const Color(0xFF027A48):Colors.grey,
                              shape: BoxShape.circle,
                            ),
                          ),
                        );
                      })),
                ),
                const SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Outline",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Row(
                        children: [
                          Text(
                            "See more",
                            style: TextStyle(
                              color: Color(0xFF027A48),
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Icon(
                            Icons.chevron_right,
                            color: Color(0xFF027A48),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10.0),
                SizedBox(
                  child: GridView.count(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: 2,
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 20.0,
                    childAspectRatio: 3,
                    children: const [
                      OutlineCard(
                        iconName: Icons.mobile_screen_share_outlined,
                        outlineText: "Apps",
                        backgroundColor: Color(0xFFF9F5FF),
                      ),
                      OutlineCard(
                        iconName: Icons.web,
                        outlineText: "Website",
                        backgroundColor: Color(0xFFFDF2FA),
                      ),
                      OutlineCard(
                        iconName: Icons.design_services_outlined,
                        outlineText: "Designs",
                        backgroundColor: Color(0xFFFFFAF5),
                      ),
                      OutlineCard(
                        iconName: Icons.person_search,
                        outlineText: "Consultant",
                        backgroundColor: Color(0xFFF0F9FF),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: const CustomBottomNavBar());
  }
}
