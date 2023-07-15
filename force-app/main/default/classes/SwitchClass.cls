public class SwitchClass {

    public static void countryName(string City){
        string sCity = City;

        switch on sCity{
            when 'New Delhi'{
                system.debug('The Country name is India');
            }
            when 'Washington'{
                system.debug('The Country name is USA');
            }
            when 'Tokyo'{
                system.debug('The Country name is Japan');
            }
            when 'London'{
                system.debug('The Country name is Briton');
            }
            when else{
                system.debug('There is no valid country for this city, please check the city name once again!');
            }
        }
    }
    
}