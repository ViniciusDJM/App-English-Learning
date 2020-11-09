import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditation_app/constants.dart';
import 'package:meditation_app/widgets/bottom_nav_bar.dart';
import 'package:meditation_app/widgets/category_card2.dart';
import 'package:meditation_app/widgets/search_bar.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .30,
            decoration: BoxDecoration(
              color: kBlueLightColor,
              //image: DecorationImage(
                //image: AssetImage("assets/images/meditation_bg.png"),
                //fit: BoxFit.fitWidth,
              //),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      alignment: Alignment.center,
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Color(0xFF80CBC4),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset("assets/icons/menu.svg"),
                    ),
                  ),
                  Text(
                    "Escolha uma letra \ne comece a praticar!\n",
                    style: Theme.of(context)
                        .textTheme
                        .display1
                        .copyWith(fontWeight: FontWeight.w900),
                  ),
                  //SearchBar(),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 5,
                      childAspectRatio: .85,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: <Widget>[
                        CategoryCard2(
                          title: "A",
                          press: () {},
                        ),
                        CategoryCard2(
                          title: "B",
                          press: () {},
                        ),
                        CategoryCard2(
                          title: "C",
                          press: () {},
                        ),
                        CategoryCard2(
                          title: "D",
                          press: () {},
                        ),
                        CategoryCard2(
                          title: "E",
                          press: () {},
                        ),CategoryCard2(
                          title: "F",
                          press: () {},
                        ),CategoryCard2(
                          title: "G",
                          press: () {},
                        ),CategoryCard2(
                          title: "H",
                          press: () {},
                        ),CategoryCard2(
                          title: "I",
                          press: () {},
                        ),CategoryCard2(
                          title: "J",
                          press: () {},
                        ),CategoryCard2(
                          title: "K",
                          press: () {},
                        ),CategoryCard2(
                          title: "L",
                          press: () {},
                        ),CategoryCard2(
                          title: "M",
                          press: () {},
                        ),CategoryCard2(
                          title: "N",
                          press: () {},
                        ),CategoryCard2(
                          title: "O",
                          press: () {},
                        ),CategoryCard2(
                          title: "P",
                          press: () {},
                        ),CategoryCard2(
                          title: "Q",
                          press: () {},
                        ),CategoryCard2(
                          title: "R",
                          press: () {},
                        ),CategoryCard2(
                          title: "S",
                          press: () {},
                        ),CategoryCard2(
                          title: "T",
                          press: () {},
                        ),
                        CategoryCard2(
                          title: "U",
                          press: () {},
                        ),CategoryCard2(
                          title: "W",
                          press: () {},
                        ),CategoryCard2(
                          title: "Y",
                          press: () {},
                        ),CategoryCard2(
                          title: "Z",
                          press: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SeassionCard extends StatelessWidget {
  final int seassionNum;
  final bool isDone;
  final Function press;
  const SeassionCard({
    Key key,
    this.seassionNum,
    this.isDone = false,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(13),
        child: Container(
          width: constraint.maxWidth / 2 -
              10, // constraint.maxWidth provide us the available with for this widget
          // padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(13),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 17),
                blurRadius: 23,
                spreadRadius: -13,
                color: kShadowColor,
              ),
            ],
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: press,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 42,
                      width: 43,
                      decoration: BoxDecoration(
                        color: isDone ? kBlueColor : Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(color: kBlueColor),
                      ),
                      child: Icon(
                        Icons.play_arrow,
                        color: isDone ? Colors.white : kBlueColor,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Session $seassionNum",
                      style: Theme.of(context).textTheme.subtitle,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
