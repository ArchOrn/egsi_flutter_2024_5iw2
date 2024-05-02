import 'package:flutter/material.dart';
import 'package:flutter_5iw2/core/models/post.dart';
import 'package:flutter_5iw2/core/services/api_services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Post> _posts = [];
  bool _loading = false;
  Error? _error = null;

  @override
  void initState() {
    super.initState();

    setState(() {
      _error = null;
      _loading = true;
    });

    ApiServices.getPosts().then((data) {
      _posts = data;
    }).catchError((error) {
      _error = error;
    }).whenComplete(() {
      setState(() {
        _loading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Builder(builder: (context) {
          if (_loading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (_error != null) {
            return Center(
              child: Text(
                _error.toString(),
                style: const TextStyle(color: Colors.red),
              ),
            );
          }

          return ListView.builder(
            itemBuilder: (context, index) {
              final post = _posts[index];
              return ListTile(
                title: Text(post.title),
                subtitle: Text(post.body),
              );
            },
            itemCount: _posts.length,
          );
        }),
      ),
    );
  }
}
