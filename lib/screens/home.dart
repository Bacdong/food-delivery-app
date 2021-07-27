import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget CategoryItems({ required String image, required String categoryName }) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(right: 10),
          width: 80,
          height: 80,  
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(image)),
            color: Colors.grey,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        SizedBox(height: 8,),
        Text(
          categoryName,
          style: TextStyle(
            fontSize: 16, 
            color: Colors.white,
            letterSpacing: 1,  
          ),
        )
      ],
    );
  }

  Widget FoodItems({ 
    required String image, 
    required String name, 
    required double price 
  }) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15),
      width: MediaQuery.of(context).size.width * 0.5 - 10,
      height: 250,
      decoration: BoxDecoration(
        color: Color(0xff3a3e3e),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: Color(0xff3a3e3e),
            radius: 60,
            backgroundImage: AssetImage(image),
          ),
          ListTile(
            leading: Text(
              name,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                letterSpacing: 1
              ),
            ),
            trailing: Text(
              '\$' + price.toString(),
              style: TextStyle(
                fontSize: 16, 
                color: Colors.white,
                letterSpacing: 1, 
              ),  
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Icon(Icons.star, size: 15, color: Colors.white ,),
                Icon(Icons.star, size: 15, color: Colors.white ,),
                Icon(Icons.star, size: 15, color: Colors.white ,),
                Icon(Icons.star, size: 15, color: Colors.white ,),
                Icon(Icons.star, size: 15, color: Colors.white ,),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget DrawerItems({ 
    required IconData icon, 
    required String title,
    required Color color,
  }) {
    return ListTile(
      leading: Icon(icon, color: color,),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: color,
          letterSpacing: 1,
        ),
      ),
    );
  }

  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        child: Container(
          color: Color(0xff3a3e3e),
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/backgrounds/1.jpeg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Color(0xff3a3e3e),
                    backgroundImage: AssetImage('images/thumbnails/1.jpeg'),
                  ), 
                  currentAccountPictureSize: Size(75, 75), 
                  accountName: Text('Bac Dong', style: TextStyle(fontSize: 18, letterSpacing: 1),), 
                  accountEmail: Text('duongdong2203@gmail.com', style: TextStyle(fontSize: 14, letterSpacing: 1),),
                ),
                DrawerItems(
                  icon: Icons.person, 
                  title: 'Profile', 
                  color: Colors.white
                ),
                DrawerItems(
                  icon: Icons.shopping_bag, 
                  title: 'Cart', 
                  color: Colors.white
                ),
                DrawerItems(
                  icon: Icons.business_center, 
                  title: 'Order ', 
                  color: Colors.white
                ),
                DrawerItems(
                  icon: Icons.error, 
                  title: 'About ', 
                  color: Colors.white
                ),
                Divider(color: Colors.grey),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    'Communicate',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                      letterSpacing: 1,
                    ),
                  ),
                ),
                
                DrawerItems(
                  icon: Icons.lock, 
                  title: 'Change', 
                  color: Colors.white
                ),
                DrawerItems(
                  icon: Icons.logout, 
                  title: 'Sign Out', 
                  color: Colors.white
                ),
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.sort),
          onPressed: () => _scaffoldKey.currentState?.openDrawer(), 
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: CircleAvatar(
              backgroundImage: AssetImage('images/thumbnails/1.jpeg'),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                hintText: 'Search Food',
                hintStyle: TextStyle(
                  fontSize: 18, 
                  color: Colors.grey,
                  letterSpacing: 1,  
                ),
                prefixIcon: Icon(Icons.search, color: Colors.grey,),
                filled: true,
                fillColor: Color(0xff3a3e3e),
                 border: OutlineInputBorder(
                   borderSide: BorderSide.none,
                   borderRadius: BorderRadius.circular(10), 
                 )
              ),
            ),
            SizedBox(height: 15,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CategoryItems(image: 'images/foods/1.png', categoryName: 'All'),
                  CategoryItems(image: 'images/foods/2.png', categoryName: 'Burger'),
                  CategoryItems(image: 'images/foods/3.png', categoryName: 'Recipes'),
                  CategoryItems(image: 'images/foods/4.png', categoryName: 'Pizza'),
                  CategoryItems(image: 'images/foods/5.png', categoryName: 'Drink'),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 500,
              child: GridView.count(
                shrinkWrap: false,
                primary: false,
                crossAxisCount: 2,
                childAspectRatio: 0.8,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                children: [
                  FoodItems(
                    image: 'images/foods/1.png', 
                    name: 'Neapolian',
                    price: 23.7,
                  ),
                  FoodItems(
                    image: 'images/foods/2.png', 
                    name: 'Chicago',
                    price: 15.2,
                  ),
                  FoodItems(
                    image: 'images/foods/3.png', 
                    name: 'Greek',
                    price: 19.05,
                  ),
                  FoodItems(
                    image: 'images/foods/4.png', 
                    name: 'Detroit',
                    price: 27.2,
                  ),
                  FoodItems(
                    image: 'images/foods/5.png', 
                    name: 'Neapolian',
                    price: 8.12,
                  ),
                  FoodItems(
                    image: 'images/foods/6.png', 
                    name: 'Neapolian',
                    price: 11.42,
                  ),
                  FoodItems(
                    image: 'images/foods/7.png', 
                    name: 'Neapolian',
                    price: 31.0,
                  ),
                  FoodItems(
                    image: 'images/foods/8.png', 
                    name: 'Neapolian',
                    price: 23.2,
                  ),
                  FoodItems(
                    image: 'images/foods/9.png', 
                    name: 'Neapolian',
                    price: 16.72,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}