class IntroModel {
  final String title;
  final String description;
  final String image;

  const IntroModel(
      {required this.title, required this.description, required this.image});

  static List<IntroModel> introList = [
    IntroModel(
        title: "Book Unique home\nAnd experience",
        description:
            "Since 2014, we've helped more than 500,000 people of all ages enjoy the best outdoor experience of their lives.",
        image: "assets/1.png"),
    IntroModel(
        title: "Discover the \nwonderful world!",
        description:
            "We believe that traveling around the world shouldn’t be hard.",
        image: "assets/2.png"),
    IntroModel(
        title: "Your dream holiday is waiting",
        description:
            "Find your favorite vacation for your story \naround the globe and make your trip meaningful.",
        image: "assets/3.png"),
  ];
}
