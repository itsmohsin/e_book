// ignore_for_file: file_names, prefer_const_constructors

import 'package:e_book/components/BookCard.dart';
import 'package:e_book/components/BookTile.dart';
import 'package:e_book/models/BookData.dart';
import 'package:e_book/pages/BookDetails/BookDetails.dart';
import 'package:e_book/pages/HomePage/Widgets/CategoryWidget.dart';
import 'package:e_book/pages/HomePage/Widgets/HomeAppBar.dart';
import 'package:e_book/pages/HomePage/Widgets/MyInputTextField.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              color: Theme.of(context).colorScheme.primary,
              // height: 500,
              child: Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          SizedBox(height: 30),
                          HomeAppBar(),
                          SizedBox(height: 50),
                          Row(
                            children: [
                              Text(
                                "Good Morning ✌️",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .background),
                              ),
                              Text(
                                "Mohsin",
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineMedium
                                    ?.copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .background),
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Flexible(
                                child: Text(
                                  "Time to read book and enhance your knowledge",
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelSmall
                                      ?.copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .background),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          MyInputTextField(),
                          SizedBox(height: 20),
                          Row(
                            children: [
                              Text(
                                "Topics",
                                style: Theme.of(context)
                                    .textTheme
                                    .labelMedium
                                    ?.copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .background),
                              )
                            ],
                          ),
                          SizedBox(height: 10),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: categoryData
                                  .map(
                                    (e) => CategoryWidget(
                                        iconPath: e["icon"]!,
                                        btnName: e["label"]!),
                                  )
                                  .toList(),
                            ),
                          ),
                          SizedBox(height: 10),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Trending',
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: bookData
                          .map((e) => BookCard(
                                bookUrl: e.bookUrl!,
                                title: e.title!,
                                ontap: () {
                                  Get.to(
                                    BookDetails(),
                                  );
                                },
                              ))
                          .toList(),
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        "Your Interests",
                        style: Theme.of(context).textTheme.labelMedium,
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  Column(
                      children: bookData
                          .map(
                            (e) => BookTile(
                              bookUrl: e.bookUrl!,
                              title: e.title!,
                              author: e.author!,
                              price: e.price!,
                              rating: e.rating!,
                              numberOfRating: e.numberOfRating!,
                            ),
                          )
                          .toList()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
