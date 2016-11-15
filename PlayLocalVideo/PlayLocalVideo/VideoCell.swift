//
//  VideoCell.swift
//  PlayLocalVideo
//
//  Created by 高研老师1 on 16/9/28.
//  Copyright © 2016年 高研老师1. All rights reserved.
//

import UIKit

struct video{
    let image:String
    let title:String
    let source:String
}

class VideoCell: UITableViewCell {

    @IBOutlet weak var videoLinkLabel: UILabel!
    @IBOutlet weak var videoTitleLabel: UILabel!
    @IBOutlet weak var videoScreenshot: UIImageView!
    override func awakeFromNib() {
              super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
