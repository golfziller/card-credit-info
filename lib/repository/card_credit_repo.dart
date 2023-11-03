import 'package:list_news/data/models/card_response.dart';
import 'package:list_news/data/network/api_service.dart';

class CardCreditRepository {
  final NetworkService apiClient;
  CardCreditRepository(this.apiClient);
  static const String endpoint = 'cards';

  Future<CardsResponse?> getCardByCitizenId(String citizenId) async {
    try {
      final response = await apiClient.get('$endpoint/$citizenId');
      return CardsResponse.fromJson(response.data);
    } catch (e) {
      return null;
    }
  }
}
