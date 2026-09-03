import 'package:final_project/screen/favorite_screen.dart';
import 'package:final_project/screen/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:final_project/filehome/home_page.dart';


import 'product_model.dart';
import 'product_card.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<ProductModel> products = [
      ...bestSellers,
      ...jackets,
      ...outdoorsProducts,
      ...forYouProducts,
    ];

    return Scaffold(
      backgroundColor: Colors.white,

      // AppBar
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,

        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const HomePage(),
              ),
            );
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),

        title: const Text(
          'Search',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      // Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // Search
              TextField(
                decoration: InputDecoration(
                  hintText: 'What are you looking for?',

                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),

              const SizedBox(height: 15),

              // Women / Men / Kids
              Row(
                children: [

                  Expanded(
                    child: Container(
                      height: 35,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius:
                            BorderRadius.circular(20),
                      ),

                      child: const Center(
                        child: Text(
                          'Women',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(width: 8),

                  Expanded(
                    child: Container(
                      height: 35,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                        ),
                        borderRadius:
                            BorderRadius.circular(20),
                      ),

                      child: const Center(
                        child: Text('Men'),
                      ),
                    ),
                  ),

                  const SizedBox(width: 8),

                  Expanded(
                    child: Container(
                      height: 35,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                        ),
                        borderRadius:
                            BorderRadius.circular(20),
                      ),

                      child: const Center(
                        child: Text('Kids'),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              const Text(
                'Categories',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              category(context, 'New Arrivals'),
              category(context, 'Hot Drops'),
              category(context, 'Sales'),
              category(context, 'Clothing'),
              category(context, 'Accessories'),
              category(context, 'Designer'),
              category(context, 'Brands'),
              category(context, 'Beauty'),
              category(context, 'Jackets'),
              category(context, 'Launches'),

              const SizedBox(height: 20),

              const Text(
                'Products',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              GridView.builder(
                shrinkWrap: true,

                physics:
                    const NeverScrollableScrollPhysics(),

                itemCount: products.length,

                gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.65,
                ),

                itemBuilder: (context, index) {
                  return ProductCard(
                    productModel: products[index],
                  );
                },
              ),
            ],
          ),
        ),
      ),

      // Bottom Navigation
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,

        type: BottomNavigationBarType.fixed,

        items: const [

          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Favorites',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: 'Cart',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],

        onTap: (index) {

          // Home
          if (index == 0) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const HomePage(),
              ),
            );
          }

          // Favorites
          if (index == 1) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    const FavoriteScreen(),
              ),
            );
          }

          // Profile
          if (index == 3) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    const ProfileScreen(),
              ),
            );
          }
        },
      ),
    );
  }

  Widget category(
    BuildContext context,
    String name,
  ) {
    return Container(
      height: 38,

      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color(0xffeeeeee),
          ),
        ),
      ),

      child: Row(
        mainAxisAlignment:
            MainAxisAlignment.spaceBetween,

        children: [

          Text(
            name,
            style: const TextStyle(
              fontSize: 12,
            ),
          ),

          const Icon(
            Icons.arrow_forward_ios,
            size: 12,
          ),
        ],
      ),
    );
  }
}