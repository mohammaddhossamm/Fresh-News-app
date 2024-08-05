
import 'package:intl/intl.dart';

   String dateTimeFormat(String? dateTimeApi) {
    if (dateTimeApi != null) {
      DateTime dateTime=DateTime.parse(dateTimeApi);
      String time=  DateFormat('h:mm a').format(dateTime);
      String date= DateFormat.yMMMMd().format(dateTime); 
      return '$date - $time';
    } else {
      return '';
    }
  }
