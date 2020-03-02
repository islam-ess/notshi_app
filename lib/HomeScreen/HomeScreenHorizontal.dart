import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import './HomeScreenList.dart';

class HomeScreenHorizontal extends StatefulWidget {
  @override
  _HomeScreenHorizontalState createState() => _HomeScreenHorizontalState();
}

class _HomeScreenHorizontalState extends State<HomeScreenHorizontal> {

  /////////////////////////////My-Drawer-Function\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

  myDrawerButton(String buttonName,String buttonImage){
    return InkWell(
      onTap: () => print(buttonName),
      child: ListTile(
        title: Text(buttonName,style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w800,),),
        leading: Image.asset(buttonImage),
      ),
    );
  }

  myDrawer() {
    return Drawer(
      child: ListView(
        children: <Widget>[
          SizedBox(height: 20.0,),
          ListTile(
            leading: Image.asset("images/Photos/user-avatar.png"),
            title: Text("Nour Abdel Kaim",style: TextStyle(fontSize: 18.0,color: Colors.black,fontWeight: FontWeight.bold),),
          ),
          SizedBox(height:20),
          myDrawerButton("My Orders", "images/Icons/my-orders-icon.png"),

          myDrawerButton("Wishlist", "images/Icons/wishlist-icon.png"),

          myDrawerButton("Languages", "images/Icons/languages-icon.png"),

          myDrawerButton("Contact us", "images/Icons/contact-us-icon.png"),

          myDrawerButton("About us", "images/Icons/about-us-icon.png"),

          myDrawerButton("Logout", "images/Icons/logout-icon.png"),

          SizedBox(height:50.0,),

          Padding(
            padding: const EdgeInsets.only(left: 20,bottom: 10),
            child: Text("Social Networks",style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w800),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: <Widget>[
                IconButton(
                  iconSize: 50.0,
                  onPressed: (){},
                  icon: Image.asset("images/Icons/facebook-icon.png"),
                ),
                IconButton(
                  iconSize: 50.0,
                  onPressed: (){},
                  icon: Image.asset("images/Icons/instagram-icon.png"),
                ),
                IconButton(
                  iconSize: 50.0,
                  onPressed: (){},
                  icon: Image.asset("images/Icons/twitter-icon.png"),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }

  ////////////////////////////Icons-Function\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

  myIcons(String imageVal, String iconName) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Wrap(
        children: <Widget>[
          Column(
            children: <Widget>[
              InkWell(
                onTap: () => print(iconName),
                child: CircleAvatar(
                  maxRadius: 35,
                  child: Image.asset(imageVal),
                  backgroundColor: Colors.black,
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 8)),
              Text(
                iconName,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
              )
            ],
          ),
        ],
      ),
    );
  }

  ////////////////////////////Content-Photo Function\\\\\\\\\\\\\\\\\\\\\\\\\\\\

  myContentPhotos(String imageVal, String content,String salary) {
    return Container(
      width: 180,
      child: Wrap(
        children: <Widget>[
          Column(
            textDirection: TextDirection.ltr,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Stack(
                alignment: AlignmentDirectional.topEnd,
                children: <Widget>[
                  Image.asset(
                    imageVal,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: CircleAvatar(
                      radius: 15,
                      backgroundColor: Color.fromRGBO(240, 240, 240, 1),
                      child: IconButton(
                        icon: Image.asset(
                          "images/Icons/like-icon.png",
                          color: Color.fromRGBO(213, 213, 213, 1),
                        ),
                        onPressed: () => print("Like"),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                content,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                salary+" SAR",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Color.fromRGBO(157, 157, 157, 1)),
              )
            ],
          ),
        ],
      ),
    );
  }

  ////////////////////////////////Category-Function\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

  myCategory(String myCat) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                myCat,
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: InkWell(
                child: Text("see all",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500)),
                onTap: () => print("See all"),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          height: 280.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              SizedBox(
                width: 16,
              ),
              myContentPhotos("images/Photos/product-image-1.png",
                  "Side diamond wedding band","250"),
              myContentPhotos("images/Photos/product-image-2.png",
                  "Gemstone nyx Necklace black","100"),
              myContentPhotos("images/Photos/product-image-3.png","Any Thing","150"),
            ],
          ),
        ),
      ],
    );
  }

  ///////////////////////////Bottom-Sheet-Function\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

  myBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: 150.0,
            child: Column(
              children: <Widget>[
                ListTile(
                  leading: Image.asset(
                    "images/Icons/menu-icon.png",
                    color: Colors.black,
                  ),
                  title: Text("Horizontal"),
                  onTap: () => Navigator.of(context).pop(),
                ),
                ListTile(
                  leading: Image.asset(
                    "images/Icons/menu-icon.png",
                    color: Colors.black,
                  ),
                  title: Text("List"),
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HomeScreenList())),
                ),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(245, 245, 245, 1),
      drawer: myDrawer(),
      /////////////////////////////////AppBar\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Builder(
          builder: (context) => IconButton(
            icon: Image.asset(
              "images/Icons/menu-icon.png",
              color: Colors.black,
            ),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon:
                Image.asset("images/Icons/grid-icon.png", color: Colors.black),
            onPressed: () => myBottomSheet(),
          ),
        ],
        elevation: 0,
      ),
      /////////////////////////////////////Body\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
      body: ListView(
        children: <Widget>[
          //////////////////////////////Head-Photos\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
          Container(
            height: 375,
            child: Carousel(
              images: [
                Image.asset(
                  "images/Photos/product-image-01.png",
                  fit: BoxFit.fill,
                ),
                Image.asset(
                  "images/Photos/product-image-02.png",
                  fit: BoxFit.fill,
                ),
                Image.asset(
                  "images/Photos/product-image-03.png",
                  fit: BoxFit.fill,
                ),
                Image.asset(
                  "images/Photos/product-image-04.png",
                  fit: BoxFit.fill,
                ),
              ],
              boxFit: BoxFit.fill,
              autoplay: true,
              indicatorBgPadding: 1.0,
              dotSize: 3.0,
              dotBgColor: Color.fromRGBO(255, 255, 255, 0),
              dotIncreasedColor: Color.fromRGBO(255, 255, 255, 0.5),
              dotColor: Color.fromRGBO(255, 255, 255, 1),
              dotIncreaseSize: 6.0,
              dotPosition: DotPosition.bottomRight,
            ),
          ),

          /////////////////////////////Head-Icons\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

          SizedBox(
            height: 25,
          ),
          Container(
            height: 140,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                myIcons("images/Icons/earrings-icon.png", "Earrings"),
                myIcons("images/Icons/necklace-icon.png", "Necklace"),
                myIcons("images/Icons/bracelet-icon.png", "Bracelet"),
                myIcons("images/Icons/ring-icon.png", "Ring"),
                myIcons("images/Icons/watch-icon.png", "Watch"),
              ],
            ),
          ),

          ////////////////////////Content-Photo-Horizontal\\\\\\\\\\\\\\\\\\\\\\
          myCategory("New Product"),
          ////////////////////////////First-Category\\\\\\\\\\\\\\\\\\\\\\\\\\\\

          Divider(),
          ///////////////////////////Second-Category\\\\\\\\\\\\\\\\\\\\\\\\\\\\
          myCategory("Products")
        ],
      ),

      ////////////////////////////////Bottom Bar\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromRGBO(0, 0, 0, 0.25),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset("images/Icons/home-icon.png"),
            title: Text(""),
          ),
          BottomNavigationBarItem(
              icon: Image.asset("images/Icons/categories-icon.png"),
              title: Text("")),
          BottomNavigationBarItem(
              icon: Image.asset("images/Icons/search-icon.png"),
              title: Text("")),
          BottomNavigationBarItem(
              icon: Image.asset("images/Icons/shopping-bag-icon.png"),
              title: Text("")),
          BottomNavigationBarItem(
              icon: Image.asset("images/Icons/user-icon.png"), title: Text("")),
        ],
      ),
    );
  }
}
