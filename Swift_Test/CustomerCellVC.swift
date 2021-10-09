//
//  CustomerCellVC.swift
//  Swift_Test
//
//  Created by liu dante on 2021/10/9.
//

import Cupcake
import UIKit

class CustomerCellVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    lazy var datas: [Any] = {
        let a = ["1", "2", "3"]
        return a
    }()

    let page = PageManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.bg(Color("white")!)
        let tab = UITableView(frame: CGRect.zero, style: .plain)
        tab.delegate = self
        tab.dataSource = self
        tab.estimatedRowHeight = 60
        tab.addTo(view)
        tab.snp.makeConstraints { make in
            make.edges.equalTo(UIEdgeInsets.zero)
        }
    }
}

extension CustomerCellVC {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datas.count
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath)

        switch indexPath.row {
        case 0:
            page.addStep()
        case 1:
            page.resetPage()
        case 2:
            print(page.getCurrentPage())
        default:
            break
        }
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let sid = "sid"
        var cell = tableView.dequeueReusableCell(withIdentifier: sid)
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: sid)
            cell?.selectionStyle = .none
        }
        
        cell?.bg(ColorManager.shared.randomCor())
        cell?.textLabel?.str(datas[indexPath.row])
        return cell ?? UITableViewCell()
    }
}
