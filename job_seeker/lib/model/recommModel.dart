import 'package:equatable/equatable.dart';

class RecomModel extends Equatable {
  final String id;
  final String imgUrl;
  final String compName;
  final String pos;
  final String salary;

  const RecomModel({
    required this.id,
    required this.imgUrl,
    required this.compName,
    required this.pos,
    required this.salary,
  });

  static List<RecomModel> rmModel = [
    RecomModel(
        id: "1",
        imgUrl: "assets/compIcons/google.png",
        compName: "Google",
        pos: "Product Designer",
        salary: '\$100k - 120k'),
    RecomModel(
        id: "2",
        imgUrl: "assets/compIcons/youtube.png",
        compName: "YouTube",
        pos: "UI/UX-Designer",
        salary: '\$150k'),
    RecomModel(
        id: "3",
        imgUrl: "assets/compIcons/apple.png",
        compName: "Apple",
        pos: "Software Developer",
        salary: '\$350k'),
    RecomModel(
        id: "4",
        imgUrl: "assets/compIcons/netflix.png",
        compName: "Netflix",
        pos: " SWE",
        salary: '\$200k - 230k'),
    RecomModel(
        id: "5",
        imgUrl: "assets/compIcons/meta.png",
        compName: "Meta",
        pos: "MERN Developer",
        salary: '\$200k - 250k'),
    RecomModel(
        id: "6",
        imgUrl: "assets/compIcons/amazon.png",
        compName: "Amazon",
        pos: "Growth Manager",
        salary: '\$300k'),
    RecomModel(
        id: "7",
        imgUrl: "assets/compIcons/microsoft.png",
        compName: "Microsoft",
        pos: "Product Designer",
        salary: '\$150k'),
    RecomModel(
        id: "8",
        imgUrl: "assets/compIcons/snapchat.png",
        compName: "Snapchcat",
        pos: "Privacy Manager",
        salary: '\$100k - 200k'),
  ];

  @override
  List<Object?> get props => [id, imgUrl, compName, pos, salary];
}
