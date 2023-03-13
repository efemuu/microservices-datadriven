import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomButtonBar extends StatelessWidget {
  const BottomButtonBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        Row(
          children: [
            ElevatedButton(
              onPressed: () => GoRouter.of(context).go('/deposit'),
              child: const Padding(
                padding: EdgeInsets.all(16),
                child: Text('Deposit'),
              ),
            ),
            const SizedBox(width: 8),
            ElevatedButton(
              onPressed: () => GoRouter.of(context).go('/transfer'),
              child: const Padding(
                padding: EdgeInsets.all(16),
                child: Text('Transfer'),
              ),
            ),
            const SizedBox(width: 8),
            ElevatedButton(
              onPressed: () => GoRouter.of(context).go('/'),
              child: const Padding(
                padding: EdgeInsets.all(16),
                child: Text('Log out'),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            ElevatedButton(
              onPressed: () => GoRouter.of(context).go('/resttest'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber[400],
              ),
              child: const Padding(
                padding: EdgeInsets.all(16),
                child: Text('REST Test'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
