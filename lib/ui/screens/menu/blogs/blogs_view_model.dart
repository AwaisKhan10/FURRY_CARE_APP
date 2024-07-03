import 'package:furry_care/core/constants/app_assets.dart';
import 'package:furry_care/core/model/blogs.dart';
import 'package:furry_care/core/view_model/base_view_model.dart';

class BlogsViewModel extends BaseViewModel {
  List<BlogsData> listBlogs = [
    BlogsData(
        title: "How to find a perfect groomer near you?",
        name: 'By FurryCare Team',
        time: 'Jan 23, 2024',
        imgUrl: AppAssets.pet,
        description:
            'The importance of grooming goes way beyond just keeping your pet clean. Regular brushing and baths not only remove dirt and keep your pet smelling fresh, but it also helps to reduce shedding, removedead skin cells, stimulate blood circulation, and distribute natural oils evenly throughout the coat. In other words, grooming is an essential part of pet ownership! But with so many different groomers out there, I need help finding mobile dog grooming near me.'),
    BlogsData(
        title: "What you need to plan for your pets?",
        name: 'By Rishyanth',
        time: 'May 2024',
        // imgUrl: AppAssets.img3,
        description:
            'A beneficial and extensive routine is one of the best ways you can ensure that your pet is receiving all the care it needs day to day....... '),
    BlogsData(
        title: "Benifitsof being a cat owner",
        name: 'By FurryCare Team',
        time: 'Jan 23, 2024',
        // imgUrl: AppAssets.img4,
        description:
            'we would focus this post on our cute kittens and why they make for such great companions. Along with this, we a......... '),
    BlogsData(
        title: "Grooming",
        name: 'By FurryCare Team',
        time: 'Jan 23, 2024',
        imgUrl: AppAssets.choosaaa,
        description:
            'The importance of grooming goes way beyond just keeping your pet clean. Regular brushing.... '),
  ];
}
