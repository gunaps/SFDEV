@isTest
public class TestRunAs{
	@isTest
	public static void testRunAs(){
		string uniqueUserName = 'StandardUser'+datetime.now().getTime()+'@edureka.co';
		profile p = [select id from profile where name = 'Standard User'];
		user u = new user(alias='standt', email='standardUser@edureka.co',
		emailEncodingkey = 'UTF-8', lastName = 'Testing', languageLocaleKey='en_US', localeSidKey='en_US', profileID = p.id,timezoneSidKey='America/Los_Angeles', username =uniqueUserName);

		system.runAs(u){
		system.debug('Current User: '+UserInfo.getUserName());
		system.debug('Current profile: '+UserInfo.getProfileId());			
		}	
}}