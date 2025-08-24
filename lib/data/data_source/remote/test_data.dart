import 'package:test_app/core/class/c_r_u_d.dart';
import 'package:test_app/link_api.dart';

class TestData {
  Crud crud;

  TestData(this.crud);

  getData() async {
    var response = await crud.postData(AppLinkApi.test, {});
    return response.fold(
      (l) => l, // Handle failure
      (r) => r, // Handle success
    );
  }
}
