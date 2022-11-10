import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:photo_sharing_application/screens/add_post_screen.dart';
import 'package:photo_sharing_application/screens/feed_screen.dart';
import 'package:photo_sharing_application/screens/profile_screen.dart';
import 'package:photo_sharing_application/screens/search_screen.dart';

const webScreenSize = 600;

List<Widget> homeScreenItems = [
  const FeedScreen(),
  const SearchScreen(),
  const AddPostScreen(),
  Center(child: const Text('notifications')),
  ProfileScreen(
    uid: FirebaseAuth.instance.currentUser!.uid,
  ),
];
