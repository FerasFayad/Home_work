/*Q2
Create a program that stores country codes and names. 
Start with:
EG → Egypt,
SA → Saudi Arabia,
AE → UAE.
Add QA → Qatar and then print the name of the country with the code EG.
 */
void main(){
Map<String , String> codeOfCountries = {
  'EG':'Egypt',
  'SA':'Saudi Arabia',
  'AE':'UAE'
  };
  codeOfCountries['QA'] = 'Qatar';
  print(codeOfCountries['EG']);

}