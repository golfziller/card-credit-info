import 'package:list_news/data/models/card_response.dart';
import 'package:list_news/data/network/api_service.dart';

class UnBilledStatementRepository {
  final NetworkService apiClient;
  UnBilledStatementRepository(this.apiClient);
  static const String endpoint = 'unbilled-statements';

  Future<List<Statements>?> getUnBilledStatement(String cardNumber) async {
    try {
      final response = await apiClient.get(endpoint, query: {
        'cardNumber': cardNumber,
      });

      final list = response.data as List<dynamic>;
      final result = list.map((e) => Statements.fromJson(e)).toList();
      return result;
    } catch (e) {
      return null;
    }
  }
}
