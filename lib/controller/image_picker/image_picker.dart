import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerController extends GetxController{
  RxString imagePath ="".obs;
Future getImage()async{
  final _picker=ImagePicker();
  final image=await _picker.pickImage(source:ImageSource.camera);
  if(image !=null){
    imagePath.value=image.path.toString();
  }
}
}