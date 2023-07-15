public class CountryCodeHelper {
	
    public static string getCountryCode(string country){
        Country_code__mdt countryCode = Country_Code__mdt.getInstance('Canada');
        return countryCode.Country_Code__c;
    }
}