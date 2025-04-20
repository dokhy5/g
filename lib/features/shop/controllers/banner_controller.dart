import 'package:g/data/repositories/banner/banner_repository.dart';
import 'package:g/features/shop/models/banner_model.dart';
import 'package:g/utils/popups/loaders.dart';
import 'package:get/get.dart';

class BannerController extends GetxController{
  final carousalCurrentIndex= 0.obs;
  final isLoading=false.obs;
  final RxList<BannerModel>banners = <BannerModel>[].obs;
@override
  void onInit(){
    fetchBanners();
    super.onInit();
  }

  
  void updatePageIndicator(int index){
    carousalCurrentIndex.value = index;
  }
  Future<void>fetchBanners()async{
    try{
      isLoading.value=true;
      final bannerRepo= Get.put(BannerRepository());
      final banners= await bannerRepo.fetchBanners();
      this.banners.assignAll(banners) ;
    }catch(e){
      GLoaders.errorSnackBar(title: 'Error',message: e.toString());
    }finally{ 
      isLoading.value=false;
      
    }
  }
}