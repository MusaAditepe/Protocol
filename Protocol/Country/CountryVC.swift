//
//  CountryVC.swift
//  Protocol
//
//  Created by Musa Adıtepe on 12.08.2024.
//

import UIKit

class CountryVC: UIViewController {

    @IBOutlet private weak var table: UITableView!
    
    let viewModel = CountryVM()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.register(UINib(nibName: "\(ListCell.self)", bundle: nil),
                       forCellReuseIdentifier: "\(ListCell.self)")
        viewModel.configureList()
    }
}

extension CountryVC: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView,numberOfRowsInSection section: Int) -> Int {
        viewModel.listItems.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath)-> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "\(ListCell.self)") as! ListCell
        cell.configure(data: viewModel.listItems[indexPath.row])
        return cell
       
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = storyboard?.instantiateViewController(withIdentifier: "LeagueVC") as! LeagueVC
        navigationController?.show(controller, sender: nil)
    }
}
