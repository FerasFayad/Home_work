/*Question 18
Write a Dart program that reads environment variables from a map.
 If a value is null, replace it with a default. 
 Print values in uppercase, and display 'Prod ready' or 'Non-prod' depending on conditions. */
void main() {
  Map<String, String?> env = {'ENV': 'prod', 'DEBUG': null};

  String envVal = (env['ENV'] ?? 'dev').toUpperCase();
  String debug = (env['DEBUG'] ?? 'false').toUpperCase();

  print("ENV: $envVal");
  print("DEBUG: $debug");

  print(envVal == 'PROD' && debug == 'FALSE'
      ? "Prod ready"
      : "Non-prod");
}
