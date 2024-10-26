
import 'package:beauty_ecommerce/features/home/presentation/data/model/beauty_product_model_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'api_constants.dart';
part 'api_services.g.dart';

@RestApi(baseUrl : ApiConstants.makeupBaseUrl)
abstract class ApiMakeupServices{
  factory ApiMakeupServices(Dio dio, {String? baseUrl}) = _ApiMakeupServices;


  @GET(ApiConstants.productEndPoint)
  Future<BeautyProductModelResponse> getProduct(
      @Query('brand') String brand,
      );
}