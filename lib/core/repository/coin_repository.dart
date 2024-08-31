import 'package:dio/dio.dart';
import 'package:exam_2/core/model/coin_model.dart';

class CoinRepository {
  static Future<List<CoinModel>> getCoins() async {
    try {
      final Response response = await Dio().get(
          'https://l4chsalter-alternative-me-crypto-v1.p.rapidapi.com/v1/ticker/');
      if (response.statusCode != null && response.statusCode! >= 200 ||
          response.statusCode! <= 300) {
        print('COINS ${response.data}');
        return (response.data as List)
            .map((map) => CoinModel.fromJson(map))
            .toList();
      } else {
        throw Exception('Failed to load coins');
      }
    } catch (e) {
      print(e.toString());
      rethrow;
    }
  }
}
