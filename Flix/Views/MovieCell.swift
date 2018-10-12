//
//  MovieCell.swift
//  Flix
//
//  Created by Avishek Thapa Magar on 9/10/18.
//  Copyright © 2018 Avishek Thapa Magar. All rights reserved.
//

import UIKit
import Alamofire

class MovieCell: UITableViewCell {

    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var overviewLabel: UILabel!
    @IBOutlet weak var posterimageView: UIImageView!
    
    var movie: Movie! {
        didSet {
            titleLabel.text = movie.title
            overviewLabel.text = movie.overview
            posterimageView.af_setImage(withURL: (movie.posterURL))
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
