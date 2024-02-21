import 'package:clean_architecture_posts_app/features/posts/domain/entities/post.dart';
import 'package:clean_architecture_posts_app/features/posts/presentation/pages/post_add_update_page.dart';
import 'package:flutter/material.dart';

class UpdatePostBtnWidget extends StatelessWidget {
  final Post post;
  const UpdatePostBtnWidget({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (_) => PostAddUpdatePage(
                        isUpdatePost: true,
                        post: post,
                      )));
        },
        icon: const Icon(Icons.edit_outlined),
        label: const Text('Edit'));
  }
}
