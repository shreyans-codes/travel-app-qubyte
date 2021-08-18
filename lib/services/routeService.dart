import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/model/destination_model.dart';
import 'package:travel_app/model/package_model.dart';
import 'package:travel_app/model/user_model.dart';
import 'package:travel_app/screens/home/home.dart';
import 'package:travel_app/screens/login_screen.dart';
import 'package:travel_app/services/authentication_services.dart';

class RouteService extends StatelessWidget {
  const RouteService({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Package> packages = [
      Package(
        cityName: "New York",
        name: "Eco Plan",
        startPrice: "₹250000",
        imageUrl:
            "https://images.unsplash.com/photo-1542601906990-b4d3fb778b09?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1474&q=80",
        rating: 4,
      ),
      Package(
        cityName: "New York",
        name: "Luxury Plan",
        startPrice: "₹450000",
        imageUrl:
            "https://images.unsplash.com/photo-1445019980597-93fa8acb246c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1353&q=80",
        rating: 5,
      ),
    ];
    Destination destination = Destination(
      imageUrl:
          "https://images.unsplash.com/photo-1534430480872-3498386e7856?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80",
      city: "New York",
      country: "USA",
      packages: packages,
    );
    final authService = Provider.of<AuthService>(context);
    return StreamBuilder<User?>(
      stream: authService.user,
      builder: (_, AsyncSnapshot<User?> snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          final User? user = snapshot.data;
          return user == null
              ? LoginScreen()
              : Home(
                  destination: destination,
                );
        } else {
          return Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
