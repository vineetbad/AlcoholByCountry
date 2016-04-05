//
//  TableViewController.swift
//  AlcoholByCountry
//
//  Created by Vineet Baid on 4/4/16.
//  Copyright © 2016 Vineet Baid. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    var country : [String] = [
        "Afghanistan",
        "Albania",
        "Algeria",
        "American Samoa",
        "Angola",
        "Antigua and Barbuda",
        "Argentina",
        "Armenia",
        "Australia",
        "Austria",
        "Azerbaijan",
        "Bahamas",
        "Bangladesh",
        "Barbados",
        "Belarus",
        "Belgium",
        "Belize",
        "Bermuda",
        "Bolivia",
        "Bosnia and Herzegovina",
        "Botswana",
        "Brazil",
        "British Virgin Islands",
        "Brunei",
        "Bulgaria",
        "Burundi",
        "Cambodia",
        "Cameroon",
        "Canada",
        "Cape Verde",
        "Cayman Islands",
        "Central African Republic",
        "Chile",
        "China",
        "Colombia",
        "Comoros",
        "Costa Rica",
        "Croatia",
        "Cuba",
        "Cyprus",
        "Czech Republic",
        "Denmark",
        "Dominican Republic",
        "Ecuador",
        "Egypt",
        "El Salvador",
        "Equatorial Guinea",
        "Eritrea",
        "Estonia",
        "Ethiopia",
        "Falkland Islands",
        "Fiji",
        "Finland",
        "France",
        "Gabon",
        "Gambia",
        "Georgia",
        "Germany",
        "Ghana",
        "Gibraltar",
        "Greece",
        "Guam",
        "Guatemala",
        "Guinea-Bissau",
        "Guyana",
        "Haiti",
        "Honduras",
        "Hong Kong",
        "Hungary",
        "Iceland",
        "India",
        "Indonesia",
        "Iran",
        "Iraq",
        "Ireland",
        "Israel",
        "Italy",
        "Jamaica",
        "Japan",
        "Jordan",
        "Kazakhstan",
        "Kenya",
        "Kosovo",
        "Kuwait",
        "Kyrgyzstan",
        "Latvia",
        "Lebanon",
        "Lesotho",
        "Libya",
        "Liechtenstein",
        "Lithuania",
        "Luxembourg",
        "Macau",
        "Macedonia",
        "Malawi",
        "Malaysia",
        "Maldives",
        "Malta",
        "Mauritius",
        "Mexico",
        "Micronesia, Federated States of",
        "Moldova",
        "Mongolia",
        "Montenegro",
        "Morocco",
        "Mozambique",
        "Namibia",
        "Nepal",
        "Netherlands",
        "New Zealand",
        "Nicaragua",
        "Niger",
        "Nigeria",
        "North Korea",
        "Northern Mariana Islands",
        "Norway",
        "Oman",
        "Pakistan",
        "Palau",
        "Palestine",
        "Panama",
        "Papua New Guinea",
        "Paraguay",
        "Peru",
        "Philippines",
        "Poland",
        "Portugal",
        "Puerto Rico",
        "Qatar",
        "Republic of the Congo",
        "Romania",
        "Russia",
        "Rwanda",
        "Samoa",
        "Saudi Arabia",
        "Senegal",
        "Serbia",
        "Seychelles",
        "Singapore",
        "Slovakia",
        "Slovenia",
        "Solomon Islands",
        "Somalia",
        "South Africa",
        "South Korea",
        "South Sudan",
        "Spain",
        "Sri Lanka",
        "Sudan",
        "Swaziland",
        "Sweden",
        "Switzerland",
        "Syria",
        "Taiwan",
        "Tajikistan",
        "Tanzania",
        "Thailand",
        "Togo",
        "Tokelau",
        "Tonga",
        "Trinidad and Tobago",
        "Tunisia",
        "Turkey",
        "Turkmenistan",
        "Turks and Caicos Islands",
        "Uganda",
        "Ukraine",
        "United Arab Emirates",
        "United Kingdom (England, Wales & Scotland)",
        "United Kingdom (Northern Ireland)",
        "United States",
        "United States Virgin Islands",
        "Uruguay",
        "Vanuatu",
        "Venezuela",
        "Vietnam",
        "Yemen",
        "Zambia",
        "Zimbabwe"]
    
    var countryDictionary  : [String:[String]] = [
        "Afghanistan": ["Illegal","Illegal","None"],
        "Albania": ["None","18","None"],
        "Algeria": ["18","18","None"],
        "American Samoa": ["21","21","None"],
        "Angola": ["18","18","None"],
        "Antigua and Barbuda": ["16","16","The sale and distribution of alcohol to a person under 16 years of age is illegal"],
        "Argentina": ["18","18","None"],
        "Armenia": ["None","18","There are no laws mandating alcohol vendors to ID potential underage drinkers. ID checks are very rarely, if ever, carried out"],
        "Australia": ["18","18","Varies by state. Some states restrict possession and consumption to over 18, all states restrict purchasing to over 18. Minors may consume alcohol in a private residence with parental supervision"],
        "Austria": ["16","16"," 16 in Burgenland,  Lower Austria and  Vienna. 16 for beer & wine & 18 for distilled beverages in  Carinthia,  Upper Austria,  Salzburg,  Styria,  Tyrol and  Vorarlberg"],
        "Azerbaijan": ["18","18","None"],
        "Bahamas": ["18","18","Foreigners are usually not asked for Identification and drinking laws are weakly enforced. ID can be required"],
        "Bangladesh": ["Illegal for Muslims","Illegal for Muslims","Alcohol will be sold to foreigners in certain locations, albeit clandestinely"],
        "Barbados": ["18","18","Those aged 10–17 are allowed to consume alcohol provided they are with a parent or guardian"],
        "Belarus": ["18","18","None"],
        "Belgium": ["None","16/18","16 for beer and wine, 18 for spirits"],
        "Belize": ["18","18","Drinking age is rarely enforced. ID is almost never requested"],
        "Bermuda": ["18","18","None"],
        "Bolivia": ["18","18","None"],
        "Bosnia and Herzegovina": ["None","18","None"],
        "Botswana": ["18","18","None"],
        "Brazil": ["18","18","ID can be required specially at nightclubs"],
        "British Virgin Islands": ["16","16","It is illegal to sell or to supply alcohol to anyone under the age of 16"],
        "Brunei": ["Illegal","Illegal","Although it is illegal to purchase alcohol, it is legal for non-Muslims aged 17 and above to bring limited amounts of alcohol into the country every 48 hours if it is consumed in their home"],
        "Bulgaria": ["None","18","The Health Act prohibits the sale of alcoholic beverages to persons under 18 years of age, but not their consumption"],
        "Burundi": ["18","18","No limit if accompanied by parents"],
        "Cambodia": ["None","None","None"],
        "Cameroon": ["18","21","18 on the premises, 21 off the premises"],
        "Canada": ["18/19","18/19","In Alberta, Manitoba and Quebec, the legal drinking age is 18. In Ontario, Saskatchewan, British Columbia,Newfoundland and Labrador, Nova Scotia, New Brunswick, Prince Edward Island, Northwest Territories,Yukon, and Nunavut, the legal drinking age is 19"],
        "Cape Verde": ["18","18","None"],
        "Cayman Islands": ["18","18","None"],
        "Central African Republic": ["18","18","None"],
        "Chile": ["18","18","The minimum age is 18 for buying and consuming alcohol. Selling alcohol to a minor may attract a fine. One must provide identification upon request. Residents of Chile over the age of 18 must carry their Chilean identification card issued by the Civil Registry and Identification Service at all times"],
        "China": ["18","18","Introduced in January 2006. Weakly enforced to not enforced"],
        "Colombia": ["18","18","None"],
        "Comoros": ["None","None","None"],
        "Costa Rica": ["18","18","None"],
        "Croatia": ["None","18","None"],
        "Cuba": ["18","18","None"],
        "Cyprus": ["17","17","None"],
        "Czech Republic": ["None","18","None"],
        "Denmark": ["None","16/18","While there is no age requirement for drinking alcohol in Denmark, there are laws which prevent minors from buying alcohol: In order to buy alcohol above 1.2% and below 16.5%ABV in stores, one must be 16 years of age. In order to buy alcohol above 16.5% ABV in stores, one must be 18 years of age. To be served alcoholic drinks in bars, discos, clubs, restaurants and any establishment serving alcoholic beverages one must be 16 years of age"],
        "Dominican Republic": ["18","18","None"],
        "Ecuador": ["18","18","None"],
        "Egypt": ["18/21","18/21","minimum is 18 for beer/21 for wine and spirits."],
        "El Salvador": ["18","18","None"],
        "Equatorial Guinea": ["None","None","None"],
        "Eritrea": ["18","18","None"],
        "Estonia": ["18","18","Drinking in public is prohibited for everyone. Stores may sell alcohol only between 10 a.m. and 10 p.m"],
        "Ethiopia": ["18","18","None"],
        "Falkland Islands": ["18","18","None"],
        "Fiji": ["18","18","The drinking age was 21 from 2006 to 2009 but was lowered to 18 in 2009"],
        "Finland": ["18/20","18/20","All major grocery chains have implemented a policy to ask for ID if the customer looks under 30.  Stores may sell alcohol only between 9 a.m. and 9 p.m: 18 for possession and purchase of 1.2–22% ABV. 20 for possession and purchase of 23–80% ABV. 18 for all in bars, clubs and restaurants"],
        "France": ["None","18","France has no explicitly stated consumption age, but selling alcohol to a minor (under 18) is illegal and can be fined 7500 euros. This age was raised from 16 to 18 in 2009"],
        "Gabon": ["18","18","Illegal for Muslims"],
        "Gambia": ["18","18","Illegal for Muslims"],
        "Georgia": ["None","16","None"],
        "Germany": ["16","16/18","16 for beer and wine, 18 for spirits"],
        "Ghana": ["18","18","None"],
        "Gibraltar": ["None","16/18","It is illegal to sell alcoholic drinks to anyone under the age of 18. The minimum age to be served in licensed premises is 16 if: The alcoholic beverage is beer, wine or cider below 15% ABV, or The alcoholic beverage is served in a bottle, or a pre-packaged container below 5.5% ABV"],
        "Greece": ["none","18","In 2008, the consumption of alcoholic beverages was prohibited for minors in public. However, the law does not apply to private events or private premises"],
        "Guam": ["21","21","None"],
        "Guatemala": ["18","18","None"],
        "Guinea-Bissau": ["None","None","None"],
        "Guyana": ["18","18","None"],
        "Haiti": ["16","16","None"],
        "Honduras": ["18","18","None"],
        "Hong Kong": ["18","18","The regulation is only applicable to restaurants, bars and clubs, where a liquor license is required. Private drinking is also not regulated"],
        "Hungary": ["18","18","None"],
        "Iceland": ["None","20","Possession or consumption of alcohol by minors is not an offence, but supplying them with alcohol is. However, law allows alcohol possessed by a minor to be confiscated"],
        "India": ["18-25","18-25","Consumption of alcohol is prohibited in the states of Manipur, Mizoram, Nagaland and Gujarat. The age varies from state to state"],
        "Indonesia": ["None","18","No law prohibits minors from consuming and possessing alcohol. The legal age for purchasing alcohol is 18, but this law is rarely implemented. ID is not often requested. There is a ban on the sale of alcoholic beverages in mini-markets and halal restaurants catering to Muslims"],
        "Iran": ["18","18","There is a ban on alcohol, but religious minorities may purchase small amounts from shops owned by the same religious minority"],
        "Iraq": ["18","18","None"],
        "Ireland": ["18","18","It is illegal for minors to buy alcohol or for a third party to attempt to buy it for minors.  Alcohol can be sold in stores only between 10:30 and 22:00 on weekdays and Saturdays or 12:30 and 22:00 on Sundays"],
        "Israel": ["None","18","It is illegal to sell alcohol between 11:00 PM and 6:00 AM, outside of pubs and restaurants. The law prohibits selling or serving alcohol to minors, but it does not prohibit minors to drink"],
        "Italy": ["None","18","In 2012 the then Health Minister Renato Balduzzi proposed to raise the age to 18. Selling alcohol to those under the age of 18 in shops carries a fine between €250 and €1000. Serving alcoholic beverages to those under the age of 16 is a criminal offense and is punished with prison up to one year, if the individual is 16 or 17 it will be treated as an offense which is fined between €250 and €1000"],
        "Jamaica": ["None","18","Minors can drink if accompanied by parent or legal guardian as well as someone with permission from their parent or legal guardian"],
        "Japan": ["20","20","None"],
        "Jordan": ["18","18","None"],
        "Kazakhstan": ["21","21","None"],
        "Kenya": ["18","18","None"],
        "Kosovo": ["None","18","None"],
        "Kuwait": ["Illegal","Illegal","None"],
        "Kyrgyzstan": ["18","18","None"],
        "Latvia": ["None","18","Selling alcoholic beverages in stores, with the exception of bars, clubs and restaurants, is prohibited between 10 p.m. and 8 a.m. Drinking in public is prohibited"],
        "Lebanon": ["18","18","None"],
        "Lesotho": ["18","18","None"],
        "Libya": ["Illegal","Illegal","None"],
        "Liechtenstein": ["16/18","16/18","Wine, beer and ciders as well as some other party drinks sometimes without spirits may be purchased by the age of 16. Spirits as well as alcopops may be sold only to people at least 18"],
        "Lithuania": ["18","18","In the Republic of Lithuania drinking in public is prohibited. Selling alcoholic beverages in stores is prohibited between 10 p.m. and 8 a.m and on 1 September of every year. Minors under the age of 18 are prohibited from consuming alcoholic beverages or from having them"],
        "Luxembourg": ["None","16","None"],
        "Macau": ["None","None","None"],
        "Macedonia": ["18","18","Must show an ID card upon request. From May 1 until September 30, alcohol can be sold in stores only between 6:00 and 21:00"],
        "Malawi": ["18","18","None"],
        "Malaysia": ["18","18","The official minimum drinking age for public is 18 (with licensed areas for purchase), however private drinking has not been regulated"],
        "Maldives": ["18","18","Sale of alcohol is limited to tourist resorts. It is illegal to sell alcohol to Muslims"],
        "Malta": ["17","17","Must provide identification upon request"],
        "Mauritius": ["18","18","None"],
        "Mexico": ["18","18","A person must be 18 years old or older to legally purchase and consume alcoholic beverages in Mexico. Some states allow minors to drink or be severed with a parent or guardian present. ID's are required"],
        "Micronesia, Federated States of": ["21","21","None"],
        "Moldova": ["None","16","None"],
        "Mongolia": ["18","18","None"],
        "Montenegro": ["None","18","None"],
        "Morocco": ["16","16","Forbidden for Muslims"],
        "Mozambique": ["18","18","None"],
        "Namibia": ["18","18","None"],
        "Nepal": ["18","18","The legal age for consumption of alcohol in Nepal is 18. However, there is a part of the Nepal society that flouts the law based on their religion and allows their children to drink alcohol at a much younger age"],
        "Netherlands": ["None","18","The legal age for purchasing any alcoholic beverage was raised from 16 to 18 on 1 January 2014. However, many places have officially or unofficially retained a less strict regulation towards 16- and 17-year-olds. Alcohol is commonly available upon parental permission"],
        "New Zealand": ["18","18","Minimum age applies for beverages with 1.15% ABV or over; no restrictions on beverages less than 1.15% ABV. Persons under 18 may not drink outside private residences or private functions unless accompanied by their parent or legal guardian. Alcohol may be supplied to minors only by and with permission from their parent or legal guardian, but no adult hosts of private functions may supply alcohol"],
        "Nicaragua": ["18","18","Furthermore sale of alcoholic beverages is prohibited to uniformed people, which frequently include (armed) military and police"],
        "Niger": ["18","18","None"],
        "Nigeria": ["18","18","None"],
        "North Korea": ["18","18","None"],
        "Northern Mariana Islands": ["21","21","None"],
        "Norway": ["None","18 (<22%)/ 20 (?22% ABV)","Minors are defined as under 18 for beer and wine, under 20 for drinks that contain 22% ABV or more. Alcohol may be sold in stores between 08:00 and 20:00 on weekdays, and Saturdays between 08:00 and 18:00. Alcoholic beverages containing more than 4,75 % ABV are sold in Vinmonopolet. In Vinmonopolet alcohol may be sold between 08:00 and 18:00 during week days, and between 08:00 and 15:00 the day before Sunday or religious holidays"],
        "Oman": ["21","21","Residents need personal liquor licenses to consume alcohol in their private residences"],
        "Pakistan": ["21","21","Forbidden by Sharia. Illegal for Muslims"],
        "Palau": ["21","21","None"],
        "Palestine": ["16","16","Legal in most cities"],
        "Panama": ["18","18","None"],
        "Papua New Guinea": ["18","18","None"],
        "Paraguay": ["20","20","None"],
        "Peru": ["18","18","None"],
        "Philippines": ["18","18","None"],
        "Poland": ["None","18","Article 15 clearly states that buyers must be at least 18 and prove it with ID if they look like they may not be at least that age"],
        "Portugal": ["None","18","The age requirement on the purchasing of alcohol is only on spirits. Wine and beer are still allowed to be bought"],
        "Puerto Rico": ["18","18","A valid Puerto Rico license ID or passport is required as proof of age to buyers who look under the age of 18, it is generally not a common practice to ask for ID to enter a venue that sells alcohol or to sell you alcohol at other establishments. Very few of the more exclusive venues in the tourist areas may have their own entrance rules regarding age including not allowing anyone under the age of 25 or 23 to enter and consume alcohol or change this depending on specific nights/events and restricted by gender/sex"],
        "Qatar": ["21","21","Muslims are allowed to purchase alcohol, but generally not allowed to consume. Non Muslims are allowed to purchase, and consume alcohol. The only legal distributor of alcohol in the country is the Qatar Distribution Company located in Doha"],
        "Republic of the Congo": ["18","18","None"],
        "Romania": ["None","18","According to law 61/1991 updated in 2008, paragraphs 21-25, it is illegal to serve or sell alcohol to minors. The law also imposes restrictions on serving or selling alcohol in some public locations (parks, hospitals, schools, stadiums, airports, public transport, etc.) or during certain events (strikes, public meetings, sport events, etc.)"],
        "Russia": ["None","18","There is no law or regulation in Russia that prohibits minors from consuming alcohol, but selling alcohol to minors is prohibited by federal and additional regional laws. Until 2011, any drink with ABV under 10% was not considered an alcoholic beverage."],
        "Rwanda": ["18","18","None"],
        "Samoa": ["18","18","None"],
        "Saudi Arabia": ["Illegal","Illegal","Drinking or possessing alcohol is illegal in the Kingdom of Saudi Arabia. Persons who drink or possess alcohol are subject to arrest and trial. Punishments for drinking or possessing alcohol ranges from heavy fines, lengthy prison terms and whippings"],
        "Senegal": ["None","None","None"],
        "Serbia": ["Unknown","Unknown","Sorry!"],
        "Seychelles": ["18","18","None"],
        "Singapore": ["None (Private places), 18 (Bars & Restaurants)","18","Drinking alcohol is strictly forbidden in public places in reaction to 2013 Little India riot, after the Committee of Inquiry accepts the recommendations on 7 July 2014"],
        "Slovakia": ["None","18","None"],
        "Slovenia": ["None","18","There is no law regulating the possession and consumption, but it is illegal to sell or offer alcohol of any kind to minors. Also, it is illegal to sell alcohol in stores from 9 p.m. to 7 a.m., 10 a.m. in bars and restaurants"],
        "Solomon Islands": ["21","21","None"],
        "Somalia": ["Illegal","Illegal","None"],
        "South Africa": ["18","18","The parent, adult guardian of a minor or a person responsible for administering a religious sacrament, may on occasion supply to that minor a moderate quantity of liquor to be consumed by the minor in the presence and under the supervision of that parent, guardian or other person"],
        "South Korea": ["None","19","None"],
        "South Sudan": ["18","18","None"],
        "Spain": ["None","18","18 in most autonomous communities of Spain. Asturias remains as last autonomous communitie in Spain where the drinking age remains at 16. Although the Governing Council gave the green light to a new law banning alcohol consumption below 18, the new legislation is still pending in period, open to amendments of the parliamentary groups"],
        "Sri Lanka": ["21","21","None"],
        "Sudan": ["Illegal","Illegal","None"],
        "Swaziland": ["18","18","None"],
        "Sweden": ["None","None/18/20","Many clubs choose to have higher age limits than 18, commonly 20 or 23. It is legal to drink below 18, but it is illegal to sell, lend or give alcohol to someone under that age. None (less than 2.25% ABV), 18 (bars and restaurants), 18 (2.25%–3.5% ABV in food shops), 20 (Systembolagetshops)"],
        "Switzerland": ["18","16/18","16 drinking age for fermented alcoholic drinks (with less than 15% ABV and natural wines with less than 18% ABV). 18 for spirits. The canton Ticino prohibits selling and consumption of any type of alcohol by minors under the age of 18. Some shops and supermarkets may not sell alcohol to minors under the age of 18"],
        "Syria": ["18","18","During the Syrian Civil War, Islamic extremists have made consumption of alcohol illegal under territories under their control"],
        "Taiwan": ["18","18","None"],
        "Tajikistan": ["21","21","Off-limits to the Muslim majority"],
        "Tanzania": ["18","18","None"],
        "Thailand": ["20","20","The Alcoholic Beverage Control Act of 2008 increased the drinking age in Thailand from 18 to 20, private drinking is not regulated in private locations"],
        "Togo": ["18","18","None"],
        "Tokelau": ["18","18","None"],
        "Tonga": ["21","21","None"],
        "Trinidad and Tobago": ["18","18","None"],
        "Tunisia": ["18","18","None"],
        "Turkey": ["18","18","The law bans the sale of alcohol in shops between 22:00 and 06:00"],
        "Turkmenistan": ["18","18","None"],
        "Turks and Caicos Islands": ["18","18","None"],
        "Uganda": ["18","18","None"],
        "Ukraine": ["18","18","None"],
        "United Arab Emirates": ["21","21","Expatriate non-Muslim residents may request a liquor permit to purchase alcoholic beverages, but it is illegal for such holders to provide drinks to others"],
        "United Kingdom (England, Wales & Scotland)": ["16/18","18","It is illegal to sell, serve, offer or consume alcoholic beverages on licensed premises under the age of 18, other than the following exception: Minors aged 16 or 17 may consume wine, beer or cider on licensed premises when ordered with a meal, and accompanied by an adult. It is legal to sell liqueur confectionery to someone of any age"],
        "United Kingdom (Northern Ireland)": ["18","18","None"],
        "United States": ["21","21","None"],
        "United States Virgin Islands": ["18","18","None"],
        "Uruguay": ["None","18","Alcohol sales are forbidden between midnight and 6 am in places where alcohol consumption is not allowed"],
        "Vanuatu": ["18","18","None"],
        "Venezuela": ["18","18","None"],
        "Vietnam": ["None","None","None"],
        "Yemen": ["Illegal","Illegal","Exception is in Aden Region where it's legal for 21 and up"],
        "Zambia": ["18","18","None"],
        "Zimbabwe": ["18","18","None"]
        
        
    ]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Alcohol Laws By Country"

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return country.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Country", forIndexPath: indexPath)
        
        cell.textLabel?.text = country[indexPath.row]



        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
