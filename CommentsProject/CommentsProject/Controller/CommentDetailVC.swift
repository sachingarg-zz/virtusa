//
//  CommentDetailVC.swift
//  CommentsProject
//
//  Created by Sachin on 12/16/20.
//

import UIKit


class CommentDetailVC: UIViewController {

    @IBOutlet weak var commentLbl: UILabel!
    var comment : String?
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(dismissMe))
    }
    
    override func viewWillAppear(_ animated: Bool) {
        commentLbl?.text = comment
    }
    
    @objc func dismissMe(){
        self.dismiss(animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
