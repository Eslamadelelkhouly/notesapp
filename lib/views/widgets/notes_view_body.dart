import 'package:flutter/material.dart';
import 'package:notesapp/views/widgets/custom_appbar.dart';
import 'package:notesapp/views/widgets/notes_item.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppbar(),
          NotesItem(),
        ],
      ),
    );
  }
}
