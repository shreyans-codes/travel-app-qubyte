import 'package:travel_app/model/package_model.dart';

class Destination {
  String? imageUrl;
  String? city;
  String? country;
  List<Package>? packages;

  Destination({
    this.imageUrl,
    this.city,
    this.country,
    this.packages,
  });
}

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

List<Package> packages2 = [
  Package(
    cityName: "New Delhi",
    name: "Eco Plan",
    startPrice: "₹250000",
    imageUrl:
        "https://images.unsplash.com/photo-1542601906990-b4d3fb778b09?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1474&q=80",
    rating: 4,
  ),
  Package(
    cityName: "New Delhi",
    name: "Luxury Plan",
    startPrice: "₹450000",
    imageUrl:
        "https://images.unsplash.com/photo-1445019980597-93fa8acb246c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1353&q=80",
    rating: 4,
  ),
];

List<Destination> destination = [
  Destination(
    imageUrl:
        "https://images.unsplash.com/photo-1534430480872-3498386e7856?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80",
    city: "New York",
    country: "USA",
    packages: packages,
  ),
  Destination(
    imageUrl:
        "https://images.unsplash.com/photo-1598977054780-2dc700fdc9d3?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=675&q=80",
    city: "New Delhi",
    country: "India",
    packages: packages2,
  ),
];
