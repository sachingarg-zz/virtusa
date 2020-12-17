//
//  CommentViewController+Ext.swift
//  CommentsProject
//
//  Created by Sachin on 12/16/20.
//

import UIKit

extension CommentController{
    
    func setUpTableView(){
        tableView.separatorInset = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
        tableView.rowHeight = UITableView.automaticDimension
        tableView.tableFooterView = UIView()
    }
    
    func setNavBar(){
        navigationItem.title = "Comment"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.isTranslucent = false
        navigationController?.navigationBar.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
    }
    
}
