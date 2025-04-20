import 'package:cloud_firestore/cloud_firestore.dart';

class BannerModel{
  BannerModel({required this.targetScreen,required this.active,required this.imageUrl});
  String imageUrl;
  final String targetScreen;
  final bool active;
  Map<String,dynamic> toJosn(){
    return{
      'ImageUrl':imageUrl,
      'TargetScreen':targetScreen,
      'Active':active,
    };
  }
  factory BannerModel.fromSnapshot(DocumentSnapshot snapshot){

       final data=snapshot.data()as Map<String,dynamic>;
       return BannerModel(
      imageUrl: data['ImageUrl'] ??'',
      targetScreen: data['TargetScreen'] ??'',
      active: data['Active'] ?? false,
     
    );
  }
   
}