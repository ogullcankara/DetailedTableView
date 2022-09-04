//
//  YemekTableViewCell.swift
//  DetailedTableView
//
//  Created by Ogulcan Kara on 4.09.2022.
//

import UIKit

protocol YemekTableViewCellProtocol {
    func siparisVer(indexPath:IndexPath)
}

class YemekTableViewCell: UITableViewCell {

    
    @IBOutlet weak var yemekImageView: UIImageView!
    
    @IBOutlet weak var yemekFiyatLabel: UILabel!
    
    @IBOutlet weak var yemekAdiLabel: UILabel!
    
    var hucreProtocol:YemekTableViewCellProtocol?
    var indexPath:IndexPath?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    
    @IBAction func siparisVerButton(_ sender: Any) {
        
        hucreProtocol?.siparisVer(indexPath: indexPath!)
        
    }
    
}
