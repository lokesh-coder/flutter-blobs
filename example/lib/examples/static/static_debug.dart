import 'package:blobs/blobs.dart';
import '../../common/app_shell.dart';
import '../../common/button.dart';
import 'package:flutter/material.dart';

class StaticDebugExample extends StatelessWidget {
  const StaticDebugExample({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BlobController blobCtrl = BlobController();
    return AppShell(
      title: 'Debug',
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              child: Blob.random(
                size: 300,
                edgesCount: 8,
                minGrowth: 2,
                controller: blobCtrl,
                debug: true,
              ),
            ),
            Button('Randomize', onTap: blobCtrl.change)
          ],
        ),
      ),
    );
  }
}
