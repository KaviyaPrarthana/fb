//
//  ListTableViewCell.swift
//  fb
//
//  Created by Kaviya Prarthana on 03/12/20.
//

import UIKit

class ListTableViewCell: UITableViewCell {

    @IBOutlet weak var list: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
