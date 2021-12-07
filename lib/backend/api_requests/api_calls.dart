import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

Future<ApiCallResponse> nebraskaCountiesCall({
  String objectid = '',
}) {
  return ApiManager.instance.makeApiCall(
    callName: 'Nebraska Counties',
    apiUrl:
        'https://gis.ne.gov/Enterprise/rest/services/boundaries/FeatureServer/16/query?where=1%3D1&outFields=Cnty_Name&returnGeometry=false&outSR=4326&f=json',
    callType: ApiCallType.GET,
    headers: {},
    params: {
      'OBJECTID': objectid,
    },
    returnBody: true,
  );
}
