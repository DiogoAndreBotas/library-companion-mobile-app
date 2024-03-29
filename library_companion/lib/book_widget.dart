import 'package:flutter/material.dart';
import 'package:library_companion/book.dart';

class BookWidget extends StatelessWidget {
  final Book book;

  const BookWidget({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(children: [
          SizedBox(
            height: 169,
            width: 110,
            child: Image.network(book.imageUrl),
          )
        ]),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Text(
                book.title,
                overflow: TextOverflow.clip,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              Text(
                "by ${book.authors}",
                overflow: TextOverflow.clip,
                style: const TextStyle(
                    fontSize: 14, fontWeight: FontWeight.normal),
              ),
              const SizedBox(height: 5),
              Text(
                "Pages: ${book.pages}",
                overflow: TextOverflow.clip,
                style: const TextStyle(
                    fontSize: 14, fontWeight: FontWeight.normal),
              ),
              const SizedBox(height: 5),
              Text(
                "Publish date: ${book.publishDate}",
                overflow: TextOverflow.clip,
                style: const TextStyle(
                    fontSize: 14, fontWeight: FontWeight.normal),
              ),
            ],
          ),
        )
      ],
    );
  }
}
