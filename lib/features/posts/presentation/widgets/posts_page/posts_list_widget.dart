import 'package:clean_architecture_posts_app/features/posts/domain/entities/post.dart';
import 'package:clean_architecture_posts_app/features/posts/presentation/pages/post_details_page.dart';
import 'package:flutter/material.dart';

class PostListWidget extends StatelessWidget {
  final List<Post> posts;
  const PostListWidget({super.key, required this.posts});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: ((context, index) {
          return ListTile(
            leading: Text(posts[index].id.toString()),
            title: Text(
              posts[index].title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              posts[index].body,
              style: const TextStyle(fontSize: 16),
            ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 10),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => PostDetailsPage(post: posts[index])));
            },
          );
        }),
        separatorBuilder: (context, index) => const Divider(
              thickness: 1,
            ),
        itemCount: posts.length);
  }
}
