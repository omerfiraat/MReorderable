//
//  MusicCell.swift
//  MakingReorderable
//
//  Created by Ömer Firat on 12.11.2020.
//  Copyright © 2020 Omer Firat. All rights reserved.
//

import UIKit

class MusicCell: UITableViewCell {
    @IBOutlet weak var imgMusic: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    
    @IBOutlet weak var lblArtist: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
