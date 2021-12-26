import 'package:flutter/material.dart';
import 'package:flutter_test6/models/user.dart';

class Room {
  final String club;
  final String name;
  final List<User> speakers;
  final List<User> followedBySpeakers;
  final List<User> others;

 const Room({
    required this.club,
    required this.name,
    this.speakers = const[],
     this.followedBySpeakers  = const[],
     this.others  = const[],
  });
}
