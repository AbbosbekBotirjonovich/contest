import 'dart:convert';

void main(List<String> args) {
  Map<String, dynamic> jsonData = jsonDecode(jsonContent);
  Map<String, String> localeValues = flattenMap(jsonData);
  print(localeValues);
}

Map<String, String> flattenMap(Map<String, dynamic> map, [String prefix = '']) {
  Map<String, String> result = {};

  map.forEach((key, value) {
    String newKey = prefix.isEmpty ? key : '$prefix.$key';

    if (value is Map<String, dynamic>) {
      // Agar qiymat yana Map bo'lsa, rekursiv chaqiramiz
      result.addAll(flattenMap(value, newKey));
    } else {
      // Agar qiymat String bo'lsa, natijaga qo'shamiz
      result[newKey] = value.toString();
    }
  });

  return result;
}

String jsonContent = """
{
  "orders": "Buyurtmalar",
  "dialog": {
    "attention": "Diqqat!",
    "yes": "Ha",
    "no" : {
    "all" : "Hammasi",
    "other" : {
    "asb" : "bsa"
    }
    }
  }
}
""";
