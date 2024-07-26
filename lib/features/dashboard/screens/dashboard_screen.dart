import 'package:carousel_slider/carousel_slider.dart';
import 'package:dealsdray_task/features/login/widgets/category_widget.dart';
import 'package:flutter/material.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.menu,
        ),
        title: Container(
          height: 55,
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              width: 0,
              color: Colors.transparent,
            ),
          ),
          child: Row(
            children: [
              const SizedBox(
                width: 8,
              ),
              Image.asset(
                'assets/images/search_logo.png',
                fit: BoxFit.fill,
                height: 40,
                width: 40,
              ),
              const SizedBox(
                width: 5,
              ),
              SizedBox(
                height: 40,
                width: MediaQuery.of(context).size.width * 0.4,
                child: const TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 5),
                    hintText: 'Search here',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              const Spacer(),
              const Icon(
                Icons.search,
                color: Colors.black45,
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0).copyWith(right: 14, left: 0),
            child: const Icon(
              Icons.notifications_none,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: IndexedStack(
        index: index,
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                const Divider(
                  height: 6,
                  color: Colors.grey,
                ),
                CarouselSlider.builder(
                  options: CarouselOptions(
                    autoPlay: true,
                    scrollDirection: Axis.horizontal,
                  ),
                  itemCount: 3,
                  itemBuilder: (context, index, realIndex) => Container(
                    margin: const EdgeInsets.all(10.0),
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Image.asset(
                      'assets/images/b1.png',
                      height: 250,
                      fit: BoxFit.fitWidth,
                      width: double.maxFinite,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    clipBehavior: Clip.antiAlias,
                    child: Image.asset(
                      'assets/images/b2.png',
                      height: 150,
                      width: double.maxFinite,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CategoryWidget(
                      category: 'Mobile',
                      img: 'assets/images/m.png',
                    ),
                    CategoryWidget(
                      category: 'LapTop',
                      img: 'assets/images/l.png',
                    ),
                    CategoryWidget(
                      category: 'Camera',
                      img: 'assets/images/c.png',
                    ),
                    CategoryWidget(
                      category: 'LED',
                      img: 'assets/images/le.png',
                    ),
                  ],
                ),
                Container(
                  height: 300,
                  margin: const EdgeInsets.symmetric(horizontal: 10)
                      .copyWith(top: 10),
                  color: Colors.blue.shade300,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 15)
                                .copyWith(left: 15),
                            child: const Text(
                              'EXCLUSIVE FOR YOU',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: Icon(
                              Icons.arrow_forward_rounded,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 220,
                        child: ListView.builder(
                          itemCount: 4,
                          padding: const EdgeInsets.only(left: 10),
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: (context, index) => Container(
                            width: 180,
                            margin: const EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(14),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                Stack(
                                  children: [
                                    Center(
                                      child: Image.asset(
                                        'assets/images/mobile.png',
                                        height: 150,
                                      ),
                                    ),
                                    Positioned(
                                      right: 5,
                                      child: Container(
                                        width: 50,
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 5,
                                        ),
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(6),
                                          color: Colors.green.shade400,
                                        ),
                                        child: const Text(
                                          '32% Off',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 10,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                const Padding(
                                  padding: EdgeInsets.only(
                                    left: 10,
                                    top: 10,
                                    bottom: 10,
                                  ),
                                  child: Text(
                                    'Nokia 8.1 (iron,64 GB)',
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Center(
            child: Text(
              'Categories',
            ),
          ),
          const Center(
            child: Text(
              'Deals',
            ),
          ),
          const Center(
            child: Text(
              'Cart',
            ),
          ),
          const Center(
            child: Text(
              'Profile',
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: index,
        selectedLabelStyle: const TextStyle(fontSize: 10),
        unselectedLabelStyle: const TextStyle(fontSize: 10),
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        selectedItemColor: Colors.red,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category_outlined),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cloud),
            label: 'Deals',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: 'Profile',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        backgroundColor: Colors.red,
        label: const Row(
          children: [
            Icon(
              Icons.chat,
              color: Colors.white,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'Chat',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
