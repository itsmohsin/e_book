import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BookTile extends StatelessWidget {
  final String bookUrl;
  final String title;
  final String author;
  final int price;
  final String rating;
  final int numberOfRating;

  const BookTile(
      {super.key,
      required this.bookUrl,
      required this.title,
      required this.author,
      required this.price,
      required this.rating,
      required this.numberOfRating});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: InkWell(
        onTap: () {},
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Theme.of(context)
                          .colorScheme
                          .primary
                          .withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 8,
                      offset: Offset(2, 2), // changes position of shadow
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    bookUrl,
                    width: 100,
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  SizedBox(height: 5),
                  Text(
                    'By:  $author',
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Price: $price',
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        color: Theme.of(context).colorScheme.secondary),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      SvgPicture.asset("assets/icons/star.svg"),
                      SizedBox(width: 5),
                      Text(
                        rating,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      SizedBox(width: 5),
                      Text(
                        "($numberOfRating ratings)",
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                    ],
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
