import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:ssa_covid_19/models/infografia_model.dart';

class CardSwiper extends StatelessWidget {

  final List<Infografia> infografias;

  CardSwiper({ @required this.infografias });



  @override
  Widget build(BuildContext context) {
    
    final _screenSize =  MediaQuery.of(context).size;

    

    return Container(
      padding: EdgeInsets.only(top:20.0),
      child: Swiper(
          layout: SwiperLayout.STACK,
          itemWidth: _screenSize.width * 0.9,
          itemHeight: _screenSize.height * 0.8,
          itemBuilder: (BuildContext context,int index){
            return ClipRRect(
              //borderRadius: BorderRadius.circular(20.0),
              child: FadeInImage(
                image: NetworkImage( infografias[index].getInfoImg() ),
                placeholder: AssetImage('assets/no-image.jpg'),
                fit: BoxFit.cover,
              ),
              //child: Image.network("http://via.placeholder.com/350x150", fit: BoxFit.cover ),
              //child: Text( infografias[index].toString() ),
            );
          },
          itemCount: infografias.length,
          pagination: new SwiperPagination(
            builder: const DotSwiperPaginationBuilder(
              size: 9.0, activeSize: 9.0, space: 7.0),
              margin: new EdgeInsets.all(0.4),
          ),

          //pagination: new SwiperPagination(),
          //control: new SwiperControl(),
      ),
    );

  }
}