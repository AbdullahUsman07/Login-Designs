import 'package:flutter/material.dart';
import 'package:responsive_trip_app/widgets/drawer_widget.dart';
import 'package:responsive_trip_app/widgets/place_gallery_widget.dart';
import 'package:responsive_trip_app/widgets/responsive_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Trip App"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      drawer:
          ResponsiveWidget.isMobile(context)
              ? Drawer(
                child: DrawerWidget())
              : null,
      body: ResponsiveWidget(
        mobile: buildMobile(),
        desktop: buildDesktop(),
        tablet: buildTablet(),
      ),
    );
  }

  buildMobile() {
    return Container(
      color: Colors.grey[200],
      child: PlaceGalleryWidget(),
    );
  }

  buildDesktop() {
    return Container(
      color: Colors.orange,
      child: Center(child: Text('This is Desktop')),
    );
  }

  buildTablet() {
    return Container(
      color: Colors.pink,
      child: Center(child: Text('This is Tablet')),
    );
  }
}
