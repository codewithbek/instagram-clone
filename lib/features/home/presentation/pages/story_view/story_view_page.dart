import "package:flutter/material.dart";

class StoryViewPage extends StatefulWidget {
  const StoryViewPage({super.key, required this.userStory});
  final UserStory userStory;

  @override
  State<StoryViewPage> createState() => _StoryViewPageState();
}

class _StoryViewPageState extends State<StoryViewPage> {
  late PageController _storyController;
  int _currentIndex = 0;
  bool _isPaused = false;

  @override
  void initState() {
    super.initState();
    _storyController = PageController();
    _startAutoPlay();
  }

  void _startAutoPlay() {
    Future<void>.delayed(const Duration(seconds: 4), () async {
      if (!_isPaused && mounted) {
        if (_currentIndex < widget.userStory.stories.length - 1) {
          setState(() => _currentIndex++);
          await _storyController.nextPage(
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeIn,
          );
          _startAutoPlay();
        } else {
          // go to next user story
          Navigator.pop(context);
        }
      }
    });
  }

  Future<void> _onTapDown(TapDownDetails details) async {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double dx = details.globalPosition.dx;
    if (dx < screenWidth / 2) {
      if (_currentIndex > 0) {
        setState(() => _currentIndex--);
        await _storyController.previousPage(
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeIn,
        );
      }
    } else {
      if (_currentIndex < widget.userStory.stories.length - 1) {
        setState(() => _currentIndex++);
        await _storyController.nextPage(
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeIn,
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTapDown: _onTapDown,
        onLongPress: () => setState(() => _isPaused = true),
        onLongPressUp: () => setState(() => _isPaused = false),
        child: Stack(
          children: <Widget>[
            PageView.builder(
              controller: _storyController,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: widget.userStory.stories.length,
              itemBuilder: (BuildContext context, int index) => Image.network(
                widget.userStory.stories[index].url,
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
            // Progress indicators
            Positioned(
              top: 40,
              left: 10,
              right: 10,
              child: Row(
                children: widget.userStory.stories.map((StoryItem story) {
                  final int i = widget.userStory.stories.indexOf(story);
                  return Expanded(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 2),
                      height: 3,
                      decoration: BoxDecoration(
                        color:
                            i <= _currentIndex ? Colors.white : Colors.white38,
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      );
}

class UserStory {
  UserStory({required this.username, required this.stories});
  final String username;
  final List<StoryItem> stories;
}

class StoryItem {
  StoryItem({required this.url, required this.duration});
  final String url;
  final Duration duration;
}
