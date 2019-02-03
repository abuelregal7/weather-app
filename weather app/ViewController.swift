//
//  ViewController.swift
//  weather app
//
//  Created by Ahmed abu elregal on 11/11/18.
//  Copyright © 2018 Ahmed abu elregal. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController , UITableViewDataSource , UITableViewDelegate{
    
    @IBOutlet weak var weatherTableView: UITableView!
    
    var image = ("01d","01n","02d","02n","03d","03n","04d","04n","09d","09n","10d","10n","11d","11n","13d","13n","50d","50n")
    var icon1 : [UIImage] = [
        
        UIImage(named: "01d")!,
        UIImage(named: "01n")!,
        UIImage(named: "02d")!,
        UIImage(named: "02n")!,
        UIImage(named: "03d")!,
        UIImage(named: "03n")!,
        UIImage(named: "04d")!,
        UIImage(named: "04n")!,
        UIImage(named: "09d")!,
        UIImage(named: "09n")!,
        UIImage(named: "10d")!,
        UIImage(named: "10n")!,
        UIImage(named: "11d")!,
        UIImage(named: "11n")!,
        UIImage(named: "13d")!,
        UIImage(named: "13n")!,
        UIImage(named: "50d")!,
        UIImage(named: "50n")!
]
    var newWeather = [Weather]()
    
    override func viewDidLoad() {
        
        weatherTableView.dataSource = self
        weatherTableView.delegate = self
        getweather()
        weatherTableView.reloadData()
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func getweather()
    {
        let WEATHERUrl = "http://api.openweathermap.org/data/2.5/forecast?q=London,us&appId=3e06c7d7dc69fe7ffb7efa5674c5c4c1"
        Alamofire.request(WEATHERUrl).responseJSON { response in
           print("The respone is : \(response)")
            let result = response.result
           print("The result is : \(result.value!)")
            if let arrayOfDic = result.value as? Dictionary<String, AnyObject>{
                print(arrayOfDic["list"] as Any)
                let messagedata = arrayOfDic["list"] as? [[String : Any]]
                print(messagedata!)
                for aDic in messagedata! {
                    let messagedata1 = aDic["main"] as? [String : Any]
                    
                    let messagedata2 = aDic["weather"] as? [[String : Any]]
                    
                  
                    
                    print(messagedata1!)
                    print(messagedata2!)
                   // print(iconName!)
                    
                    self.newWeather.append(Weather(

                        id: messagedata2![0]["id"] as! Int,
                        main: messagedata2![0]["main"] as! String,
                        description: messagedata2![0]["description"] as! String,
                        icon : messagedata2![0]["icon"] as! String,
                        dt: aDic["dt"] as! Int,
                        temp: messagedata1!["temp"]as! Double,
                        temp_min: messagedata1!["temp_min"]as! Double,
                        temp_max:  messagedata1!["temp_max"]as! Double,
                        pressure: messagedata1!["pressure"]as! Double,
                        sea_level: messagedata1!["sea_level"]as! Double,
                        grnd_level: messagedata1!["grnd_level"]as! Double,
                        humidity: messagedata1!["humidity"]as!Int,
                        temp_kf: messagedata1!["temp_kf"]as! Double
                        ))
               }
                self.weatherTableView.reloadData()
                print("\n\n")
                print("The Count is :\(self.newWeather.count)")
            }
        }
    }
    
//    let date = Date()
//    let dateFormatter = DateFormatter()
//    dateFormatter.dateFormat = "EEEE"
//    self.dayLabel.text = dateFormatter.string(from: date)
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newWeather.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = weatherTableView.dequeueReusableCell(withIdentifier: "WeatherTableViewCell") as! WeatherTableViewCell
        cell.IdLable.text = "\(newWeather[indexPath.row].id!)"
        cell.MainLable.text = newWeather[indexPath.row].main!
        cell.DescriptionLable.text = newWeather[indexPath.row].description!
        cell.IconImage.image = UIImage(named : newWeather[indexPath.row].icon!)
        cell.dtLabel.text = "\(newWeather[indexPath.row].dt!)"
        cell.tempLabel.text = "\(newWeather[indexPath.row].temp!)"
        cell.temp_minLabel.text = "\(newWeather[indexPath.row].temp_min!)"
        cell.temp_maxLabel.text = "\(newWeather[indexPath.row].temp_max!)"
        cell.pressureLabel.text = "\(newWeather[indexPath.row].pressure!)"
        cell.sea_levelLabel.text = "\( newWeather[indexPath.row].sea_level!)"
        cell.grnd_levelLabel.text = "\( newWeather[indexPath.row].grnd_level!)"
        cell.humidityLabel.text = "\(newWeather[indexPath.row].humidity!)"
        cell.temp_kfLabel.text = "\(newWeather[indexPath.row].temp_kf!)"
        //cell.IconImage.image = newWeather[indexPath.row].icon
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 600
    }
    
    
}


