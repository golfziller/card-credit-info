import 'package:list_news/data/models/card_response.dart';
import 'package:list_news/data/network/api_service.dart';

class BilledStatementRepository {
  final NetworkService apiClient;
  BilledStatementRepository(this.apiClient);
  static const String endpoint = 'billed-statements';

  Future<List<Statements>?> getBilledStatement(
      String cardNumber, String asOf) async {
    try {
      final response = await apiClient.get(endpoint, query: {
        'cardNumber': cardNumber,
        'asOf': asOf,
      });
      final list = response.data as List<dynamic>;
      final result = list.map((e) => Statements.fromJson(e)).toList();
      return result;
    } catch (e) {
      return null;
    }
  }
}
