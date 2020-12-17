//
//  CommentController.swift
//  CommentsProject
//
//  Created by Sachin on 12/16/20.
//

import UIKit

class CommentController: UITableViewController {

    
    var commentViewModels = [CommentViewModel]()

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTableView()
        setNavBar()
        getCommets()

    }
    
    private func getCommets(){
        Service.getComment(urlString: APIndPoint.commentUrl) { (result) in
            switch result{
            case .success(let comments):
                self.commentViewModels = comments?.map({return CommentViewModel(comment: $0)}) ?? []
                DispatchQueue.main.async {
                    self.tableView.reloadData()

                }
            case .failure(let error):
                self.presentAlertViewConrtoller(title: "Error", message: error.localizedDescription, actionTitle: "OK")
                print(error.localizedDescription)
            }
        }
        
       
    }
    
    func openDetail(comment: String) {
        let detailVC = storyboard?.instantiateViewController(identifier: "CommentDetailVC") as? CommentDetailVC
        let navCont = UINavigationController(rootViewController: detailVC!)
        detailVC?.comment = comment
        present(navCont, animated: true)
    }
 
}

extension CommentController{
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.commentViewModels.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CommentCell.identifier, for: indexPath) as! CommentCell
        let commentViewModel = commentViewModels[indexPath.row]
        cell.configure(viewModel: commentViewModel)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let comment = self.commentViewModels[indexPath.item]
        self.openDetail(comment: comment.body)
    }
    
}

