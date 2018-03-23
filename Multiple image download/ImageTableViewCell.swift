//
//  ImageTableViewCell.swift
//  Multiple image download
//
//  Created by vinoth on 12/28/1396 AP.
//  Copyright © 1396 kamal. All rights reserved.
//

import UIKit

class ImageTableViewCell: UITableViewCell {

    @IBOutlet weak var ipProgress: UIProgressView!
    @IBOutlet weak var imgView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
