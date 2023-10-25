import 'package:e_book/components/PrimaryButton.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 450,
            padding: const EdgeInsets.all(20),
            color: Theme.of(context).colorScheme.primary,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 30),
                      Image.asset(
                        "assets/images/book.png",
                        width: 375,
                      ),
                      const SizedBox(height: 30),
                      Text(
                        'E - Book Store',
                        style: Theme.of(context)
                            .textTheme
                            .headlineLarge
                            ?.copyWith(
                                color:
                                    Theme.of(context).colorScheme.background),
                      ),
                      const SizedBox(height: 10),
                      Flexible(
                        child: Text(
                          'Hear you can find best book for you and you can also read book and listens book',
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .labelSmall
                              ?.copyWith(
                                  color:
                                      Theme.of(context).colorScheme.background),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Disclaimer",
                        style: Theme.of(context).textTheme.labelMedium),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Flexible(
                      child: Text(
                          "Thanks to tablets and smartphone reading apps, you can gobble up as many books as you want without having to scrounge up physical space for all of them. If you're an author, a marketer, or a business owner, this convenience allows you to harness the full power of eBooks -- whether you're trying to generate leads, launch a fiction career, share your life story, or simply offer some expert advice.",
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.labelSmall),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(10),
            child: PrimaryButton(
              btnName: 'Continue',
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
