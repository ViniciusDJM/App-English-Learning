import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditation_app/size_config.dart';
import 'package:meditation_app/widgets/home.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: buildAppBar(),// Vai construir a barra superior do app, que contem o logo, as 2 listras e a lupa.
      body: Home(), // Onde vai estar a barra de categorias (Atividade, recordes e etc) e os Cards de menu!
    );
  }

  AppBar buildAppBar() { //O app bar que eu descrevi la em cima
    return AppBar(
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/menu.svg"),
        onPressed: () {},
      ),
      centerTitle: true,
      title: Image.asset("assets/images/logo4.png"),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset("assets/icons/search.svg"),
          onPressed: () {},
        ),
        SizedBox(
          // It means 5 because by out defaultSize = 10
          width: SizeConfig.defaultSize * 0.5,
        )
      ],
    );
  }
}
