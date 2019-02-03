//
//  WeatherTableViewCell.swift
//  weather app
//
//  Created by Ahmed abu elregal on 11/14/18.
//  Copyright © 2018 Ahmed abu elregal. All rights reserved.
//

import UIKit

class WeatherTableViewCell: UITableViewCell {

    @IBOutlet weak var IdLable: UILabel!
    @IBOutlet weak var MainLable: UILabel!
    @IBOutlet weak var DescriptionLable: UILabel!
    @IBOutlet weak var IconImage: UIImageView!
    @IBOutlet weak var dtLabel: UILabel!
    @IBOutlet weak var tempLabel: UILabel!
    @IBOutlet weak var temp_minLabel: UILabel!
    @IBOutlet weak var temp_maxLabel: UILabel!
    @IBOutlet weak var pressureLabel: UILabel!
    @IBOutlet weak var sea_levelLabel: UILabel!
    @IBOutlet weak var grnd_levelLabel: UILabel!
    @IBOutlet weak var humidityLabel: UILabel!
    @IBOutlet weak var temp_kfLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
