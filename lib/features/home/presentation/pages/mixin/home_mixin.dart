part of "package:flutter_clean_architecture/features/home/presentation/pages/home_page.dart";

mixin HomeMixin on State<HomePage> {
  final CarouselSliderController _pageController = CarouselSliderController();
  final RefreshController _refreshController = RefreshController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  Future<void> _onRefresh() async {
    // monitor network fetch
    await Future<void>.delayed(const Duration(milliseconds: 1000));
    // if failed,use refreshFailed()
    _refreshController.refreshCompleted();
  }

  Future<void> _onLoading() async {
    // monitor network fetch
    await Future<void>.delayed(const Duration(milliseconds: 1000));
    // if failed,use loadFailed(),if no data return,use LoadNodata()

    _refreshController.loadComplete();
  }
// --- Replace your lists with these ---

  final List<Story> stories = <Story>[
    Story(
      imageUrl: "https://i.pravatar.cc/150?img=12",
      username: "you",
      isCloseFriend: true,
    ),
    Story(
      imageUrl: "https://i.pravatar.cc/150?img=32",
      username: "sam.ui",
      isSeen: true,
    ),
    Story(
      imageUrl: "https://i.pravatar.cc/150?img=48",
      username: "tashkent.eats",
    ),
    Story(
      imageUrl: "https://i.pravatar.cc/150?img=5",
      username: "runclub.uz",
      isSeen: true,
    ),
    Story(
      imageUrl: "https://i.pravatar.cc/150?img=22",
      username: "dev.notes",
    ),
    Story(
      imageUrl: "https://i.pravatar.cc/150?img=41",
      username: "street.frames",
    ),
    Story(
      imageUrl: "https://i.pravatar.cc/150?img=19",
      username: "coffee.daily",
      isSeen: true,
    ),
    Story(
      imageUrl: "https://i.pravatar.cc/150?img=56",
      username: "travel.light",
    ),
    Story(
      imageUrl: "https://i.pravatar.cc/150?img=61",
      username: "fitness.simple",
      isSeen: true,
    ),
  ];

  final List<IGPost> posts = <IGPost>[
    const IGPost(
      username: "street.frames",
      userImage: "https://i.pravatar.cc/150?img=41",
      postImages: <String>[
        "https://picsum.photos/seed/night-street-01/1080/1350",
        "https://picsum.photos/seed/night-street-02/1080/1350",
      ],
      caption: """
Night walks hit different 🌃
Shot on phone, edited lightly.

#streetphotography #nightvibes #citylights
""",
      timeAgo: "2 hours ago",
      comments: 48,
      likes: 1324,
      shares: 27,
      likers: <String>[
        "https://i.pravatar.cc/150?img=12",
        "https://i.pravatar.cc/150?img=22",
        "https://i.pravatar.cc/150?img=32",
        "https://i.pravatar.cc/150?img=56",
        "https://i.pravatar.cc/150?img=5",
      ],
    ),
    const IGPost(
      username: "tashkent.eats",
      userImage: "https://i.pravatar.cc/150?img=48",
      postImages: <String>[
        "https://picsum.photos/seed/food-uz-01/1080/1350",
        "https://picsum.photos/seed/food-uz-02/1080/1350",
        "https://picsum.photos/seed/food-uz-03/1080/1350",
      ],
      caption: """
Quick review 🍽️
✅ cozy place
✅ big portions
✅ tea was perfect

Would you try this? 👇
#foodie #tashkent #comfortfood
""",
      timeAgo: "6 hours ago",
      comments: 112,
      likes: 4980,
      shares: 103,
      likers: <String>[
        "https://i.pravatar.cc/150?img=19",
        "https://i.pravatar.cc/150?img=61",
        "https://i.pravatar.cc/150?img=32",
        "https://i.pravatar.cc/150?img=56",
        "https://i.pravatar.cc/150?img=22",
      ],
    ),
    const IGPost(
      username: "runclub.uz",
      userImage: "https://i.pravatar.cc/150?img=5",
      postImages: <String>[
        "https://picsum.photos/seed/run-01/1080/1350",
      ],
      caption: """
Sunday 5K ✅
Pace doesn’t matter — showing up does.

Who’s joining next week?
#running #discipline #5k
""",
      timeAgo: "1 day ago",
      comments: 79,
      likes: 2310,
      shares: 55,
      likers: <String>[
        "https://i.pravatar.cc/150?img=12",
        "https://i.pravatar.cc/150?img=19",
        "https://i.pravatar.cc/150?img=22",
        "https://i.pravatar.cc/150?img=32",
        "https://i.pravatar.cc/150?img=48",
      ],
    ),
    const IGPost(
      username: "dev.notes",
      userImage: "https://i.pravatar.cc/150?img=22",
      postImages: <String>[
        "https://picsum.photos/seed/devdesk-01/1080/1350",
        "https://picsum.photos/seed/devdesk-02/1080/1350",
      ],
      caption: """
Building a Flutter app UI today ✨
Clean architecture + smooth animations.

Tip: keep widgets small, move logic out of UI.
#flutter #mobiledev #cleanarchitecture
""",
      timeAgo: "3 days ago",
      comments: 36,
      likes: 910,
      shares: 18,
      likers: <String>[
        "https://i.pravatar.cc/150?img=32",
        "https://i.pravatar.cc/150?img=12",
        "https://i.pravatar.cc/150?img=56",
        "https://i.pravatar.cc/150?img=41",
        "https://i.pravatar.cc/150?img=61",
      ],
    ),
    const IGPost(
      username: "travel.light",
      userImage: "https://i.pravatar.cc/150?img=56",
      postImages: <String>[
        "https://picsum.photos/seed/mountains-01/1080/1350",
        "https://picsum.photos/seed/mountains-02/1080/1350",
        "https://picsum.photos/seed/mountains-03/1080/1350",
        "https://picsum.photos/seed/mountains-04/1080/1350",
      ],
      caption: """
4 frames from the weekend ⛰️
Air was cold. Mind was quiet.

Save this for your next trip idea.
#travel #mountains #weekend
""",
      timeAgo: "1 week ago",
      comments: 204,
      likes: 12450,
      shares: 420,
      likers: <String>[
        "https://i.pravatar.cc/150?img=48",
        "https://i.pravatar.cc/150?img=41",
        "https://i.pravatar.cc/150?img=19",
        "https://i.pravatar.cc/150?img=12",
        "https://i.pravatar.cc/150?img=32",
      ],
    ),
    const IGPost(
      username: "coffee.daily",
      userImage: "https://i.pravatar.cc/150?img=19",
      postImages: <String>[
        "https://picsum.photos/seed/coffee-01/1080/1350",
      ],
      caption: """
Same order, new day ☕️
What’s your go-to coffee?
#coffee #morningroutine
""",
      timeAgo: "2 weeks ago",
      comments: 58,
      likes: 1870,
      shares: 14,
      likers: <String>[
        "https://i.pravatar.cc/150?img=12",
        "https://i.pravatar.cc/150?img=22",
        "https://i.pravatar.cc/150?img=48",
        "https://i.pravatar.cc/150?img=56",
        "https://i.pravatar.cc/150?img=61",
      ],
    ),
  ];
}
