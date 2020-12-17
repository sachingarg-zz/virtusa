//
//  CommentCell.swift
//  CommentsProject
//
//  Created by Sachin on 12/16/20.
//

import UIKit

protocol CommentCellDelegate {
    func didTapOnCell(comment : String)
}

class CommentCell: UITableViewCell {
    @IBOutlet weak var emailLbl: UILabel!
    
    var delegate : CommentCellDelegate?
    
    var viewModel : CommentViewModel!
    @IBOutlet weak var commentLbl: UILabel!
    @IBOutlet weak var nameLbl: UILabel!
    
    static let identifier = "cellId"
 
    func configure(viewModel : CommentViewModel){
        self.viewModel = viewModel
        nameLbl.text = viewModel.name
        emailLbl.text = viewModel.email
        commentLbl.text = viewModel.body
        accessoryType = .disclosureIndicator
    }
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
       // delegate?.didTapOnCell(comment: self.viewModel.body)


        // Configure the view for the selected state
    }
    
//    override func setHighlighted(_ highlighted: Bool, animated: Bool) {
//        super.setHighlighted(highlighted, animated: animated)
//      //  contentView.backgroundColor = isHighlighted ? .highlightColor : .white
//       // textLabel?.textColor = isHighlighted ? UIColor.white : .mainTextBlue
//        detailTextLabel?.textColor = isHighlighted ? .white : .black
//    }
//    
//    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
//        super.init(style: .subtitle, reuseIdentifier: reuseIdentifier)
//        
//        // cell customization
//        textLabel?.font = UIFont.boldSystemFont(ofSize: 24)
//        textLabel?.numberOfLines = 0
//        detailTextLabel?.textColor = .black
//        detailTextLabel?.font = UIFont.systemFont(ofSize: 20, weight: .light)
//    }
//    
//    required init?(coder aDecoder: NSCoder) {
//        fatalError()
//    }

}
