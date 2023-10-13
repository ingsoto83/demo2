import 'package:flutter/material.dart';

class TravelWidget extends StatelessWidget {
  const TravelWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    Widget imageSectionP = Container(
        height: height * .4,
        width: width,
        child: Image.asset('assets/img/place.jpg', fit: BoxFit.cover,)
    );
    Widget imageSectionL = Container(
        height: height,
        width: width * .5,
        child: Image.asset('assets/img/place.jpg', fit: BoxFit.cover,)
    );
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text("Sierra de San Lorenzo", style: TextStyle(fontWeight: FontWeight.bold),),
                ),
                Text("Saltillo, Coahuila, México", style: TextStyle(color: Colors.grey[500]),),
              ],
            ),
          ),
          Icon(Icons.star, color: Colors.orange,),
          Text("41")
        ],
      ),
    );
    Widget buttonsSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildBtnColumn(Theme.of(context).primaryColor, Icons.call, 'CALL'),
        _buildBtnColumn(Theme.of(context).primaryColor, Icons.near_me, 'ROUTE'),
        _buildBtnColumn(Theme.of(context).primaryColor, Icons.share, 'SHARE'),
      ],
    );
    Widget detailSection = Container(
      padding: EdgeInsets.all(32),
      child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla fringilla magna eget odio vestibulum, sollicitudin rutrum ex tempus. Proin ultricies feugiat aliquet. Suspendisse potenti. Curabitur faucibus, elit gravida fermentum egestas, dolor massa facilisis odio, et venenatis turpis massa eget mauris. Morbi ornare, arcu sed rutrum rhoncus, ante quam dignissim nulla, ac viverra purus sem a lacus. Sed orci turpis, auctor ut sapien eget, placerat interdum lorem. Morbi in commodo nisl. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Nunc risus eros, fringilla in neque a, aliquam faucibus felis. Fusce consectetur purus vitae mattis luctus. Maecenas dictum rhoncus dolor, eget molestie enim maximus nec. Mauris sapien libero, dictum non feugiat vitae, elementum nec libero.',softWrap: true,),
    );
    
    return Scaffold(
      body: OrientationBuilder(
        builder: (context, orientation) {
          return orientation == Orientation.portrait ?
              SingleChildScrollView(
                child: Column(
                  children: [imageSectionP, titleSection, buttonsSection, detailSection],
                ),
              ) : Row(
            children: [
              imageSectionL,
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      titleSection,
                      buttonsSection,
                      detailSection
                    ],
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }


  Column _buildBtnColumn(Color color, IconData icon, String title){
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color,),
        Container(
          margin: EdgeInsets.only(top: 8),
          child: Text(
            title,
            style: TextStyle(fontSize: 12, color: color, fontWeight: FontWeight.w400),
          ),
        )
      ],
    );
  }
}
