
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class PosterContainer extends StatelessWidget {
  const PosterContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFBFE),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            VideoLokal(),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(28),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Expanded(
                        child: Column(
                          crossAxisAlignment:
                              CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Ayam Jago',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Colors.black87,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Bojong Suren',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),

                      const Icon(
                        Icons.star,
                        color: Colors.redAccent,
                        size: 22,
                      ),
                      const SizedBox(width: 5),
                      const Text(
                        '4,5',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),

                  const SizedBox(height: 26),

                  Row(
                    mainAxisAlignment:
                        MainAxisAlignment.spaceAround,
                    children: [
                      _buildAction(Icons.call, 'CALL'),
                      _buildAction(Icons.near_me, 'ROUTE'),
                      _buildAction(Icons.share, 'SHARE'),
                    ],
                  ),

                  const SizedBox(height: 28),

                  const Text(
                    'Ayam jago adalah ayam jantan dewasa '
                    '(Gallus gallus domesticus) yang memiliki '
                    'tubuh lebih besar dan kekar dibandingkan '
                    'ayam betina. Ciri khasnya meliputi jengger '
                    'dan pial, bulu ekor melengkung, serta '
                    'kebiasaan berkokok pada pagi atau waktu '
                    'tertentu. Ayam jago memiliki peran penting '
                    'dalam perkembangbiakan dan kehidupan '
                    'peternakan.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.4,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget _buildAction(
    IconData icon,
    String label,
  ) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          color: Colors.deepPurple,
          size: 22,
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(
            color: Colors.deepPurple,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}

class VideoLokal extends StatelessWidget {
  VideoLokal({super.key});

  final Future<VideoPlayerController> _videoFuture =
      _buatController();

  static Future<VideoPlayerController> _buatController() async {
    final controller = VideoPlayerController.asset(
      'lib/assets/videos/ayam.mp4',
    );

    try {
      await controller.initialize();
      return controller;
    } catch (_) {
      controller.dispose();
      rethrow;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 250,
      color: Colors.black,
      child: FutureBuilder<VideoPlayerController>(
        future: _videoFuture,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Center(
              child: Text(
                'Video gagal dimuat. Periksa file video.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
            );
          }

          if (snapshot.connectionState != ConnectionState.done) {
            return const Center(
              child: CircularProgressIndicator(
                color: Colors.white,
              ),
            );
          }

          final controller = snapshot.data!;

          return Stack(
            alignment: Alignment.center,
            children: [
              SizedBox.expand(
                child: FittedBox(
                  fit: BoxFit.fill,
                  child: SizedBox(
                    width: controller.value.size.width,
                    height: controller.value.size.height,
                    child: VideoPlayer(controller),
                  ),
                ),
              ),

              ValueListenableBuilder<VideoPlayerValue>(
                valueListenable: controller,
                builder: (context, value, child) {
                  return IconButton(
                    iconSize: 60,
                    color: const Color.fromARGB(255, 250, 249, 249).withValues(alpha: 0.6),
                    onPressed: () {
                      if (value.isPlaying) {
                        controller.pause();
                      } else {
                        controller.play();
                      }
                    },
                    icon: Icon(
                      value.isPlaying
                          ? Icons.pause_circle_filled
                          : Icons.play_circle_fill,
                    ),
                  );
                },
              ),

              Positioned(
                left: 10,
                right: 10,
                bottom: 5,
                child: VideoProgressIndicator(
                  controller,
                  allowScrubbing: true,
                  colors: const VideoProgressColors(
                    playedColor: Colors.redAccent,
                    bufferedColor: Colors.white54,
                    backgroundColor: Colors.white24,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
