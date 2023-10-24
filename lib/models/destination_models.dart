import 'package:travel_ui/models/activity_model.dart';
class Destination {
  String imageUrl;
  String city;
  String country;
  String description;

  List<Activity> activities;

  Destination({
    required this.imageUrl,
    required this.city,
    required this.country,
    required this.activities,
    required this.description
});
}

List<Activity> activities =[
  
  Activity(name: 'st . Mark/ s Basilica', type: 'Sightseeing Tour', price: 30, rating: 5, imageUrl: 'assets/images/stmarksbasilica.jpg', startTimes: ['9:00am', '11:am']),
  Activity(name: 'walking Tour and Gonadole Ride', type: 'sightseeing Tour', price: 210, rating: 4, imageUrl: 'assets/images/gondola.jpg', startTimes: ['11:00am', '1:pm']),
  Activity(name: 'Murano and Burano Tour', type: 'sightseeing Tour', price: 125, rating: 3, imageUrl: 'assets/images/murano.jpg', startTimes: ['12:00am', '2:pm']),

  
];

List <Destination> destinations=[
  Destination(imageUrl: 'assets/images/paris.jpg', city: 'paris', country: 'france', activities: activities, description: 'visit paris for an amazing and unforgetttable adventure'),
  Destination(imageUrl: 'assets/images/newdelhi.jpg', city: 'india', country: 'india', activities: activities, description: 'visit india for an amazing an unforgettable adventure'),
  Destination(imageUrl: 'assets/images/saopaulo.jpg', city: 'Sao polo', country: 'Brazil', activities: activities, description: 'visit saupolo for an amazing and unforgettable adventur'),
  Destination(imageUrl: 'assets/images/newyork.jpg', city: 'New York city', country: 'United States', activities: activities, description: 'visit New york for an amazing an unforgettable adventure')

];