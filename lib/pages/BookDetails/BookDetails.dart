import 'package:e_book/config/colors.dart';
import 'package:e_book/pages/BookDetails/BookActionButton.dart';
import 'package:e_book/pages/BookDetails/BookDetailsHeader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BookDetails extends StatelessWidget {
  const BookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              // height: 500,
              color: primaryColor,
              child: Row(
                children: [
                  Expanded(
                    child: BookDetailsHeader(),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'About Book',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Flexible(
                        child: Text(
                          'n publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum',
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        'About Author',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Flexible(
                        child: Text(
                          'n publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum',
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  BookActionButton(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
