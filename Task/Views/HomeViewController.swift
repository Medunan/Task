//
//  ViewController.swift
//  Task
//
//  Created by Medunan  on 19/11/22.
//

import UIKit

class HomeViewController: UIViewController {
//    var taskmanager = TaskManager()
    private let tableView = UITableView()
    var items: [Menu] = []
   
    override func viewDidLoad() {
        super.viewDidLoad()
//        taskmanager.getDetails()
        items = fetchData()
        view.backgroundColor = .systemBackground
        
        configureTableView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        fetchData()
    }
    
    func configureTableView() {
        view.addSubview(tableView)
        
//        tableView.allowsSelection = true
        title = "Home"
        tableView.frame = view.bounds
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = .white
        tableView.rowHeight = 500
        
        tableView.register(AccountCell.self, forCellReuseIdentifier: AccountCell.reuseID)
        
    }
        
    
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: AccountCell.reuseID) as! AccountCell
        let menuItems = items[indexPath.row]
        cell.set(menu: menuItems)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
//        let item = Menu(imageName: , title: <#T##String#>)
    }
    
   
}


extension HomeViewController {
    
    func fetchData() -> [Menu] {
        let img1 = Menu(imageName: UIImage(named: "Dummy")!, title: "mmddm", ProductType: "kmekf", cost: 345)
        let img2 = Menu(imageName: UIImage(named: "Dummy")!, title: "mdfmf", ProductType: "dffs", cost: 342)
        let img3 = Menu(imageName: UIImage(named: "Dummy")!, title: "mdfmf", ProductType: "dffs", cost: 344)
        let img4 = Menu(imageName: UIImage(named: "Dummy")!, title: "mdfmf", ProductType: "dffs", cost: 222)
        let img5 = Menu(imageName: UIImage(named: "Dummy")!, title: "mdfmf", ProductType: "dffs", cost: 244)
        
        
        return [img1,img2,img3,img4,img5]
    }
}



//import SwiftUI
//
//struct UIViewControllerPreview<ViewController: UIViewController>: UIViewControllerRepresentable {
//
//    func updateUIViewController(_ uiViewController: ViewController, context: Context) {
//    }
//    let viewController: ViewController
//    init(_ builder: @escaping () -> ViewController) {
//        viewController = builder()
//    }
//    // MARK: - UIViewControllerRepresentable
//
//    func makeUIViewController(context: Context) -> ViewController {
//        viewController
//    }
//}
//
//struct BestInClassPreviews_Previews: PreviewProvider {
//    static var previews: some View {
//        UIViewControllerPreview {
//            // Return whatever controller you want to preview
//            let vc = HomeViewController()
//            return vc
//        }
//    }
//}




