//
//  ViewController.swift
//  Swift_Test
//
//  Created by liu dante on 2021/7/27.
//

import Cupcake
import UIKit

class ViewController: BaseVC {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.bg(cor.randomCor()).onTap {
            self.navigationController?.pushViewController(CustomerCellVC(), animated: true)
        }

        navigationController?.navigationBar.isTranslucent = false
        let view = View.addTo(self.view).bg(UIColor.red).onTap {
            self.hello()
        }
        view.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(10)
            make.top.equalToSuperview().offset(10)
            make.size.equalTo(CGSize(width: 50, height: 50))
        }

        let view1 = View.addTo(self.view).bg(UIColor.blue).onTap {
            self.hello1()
        }

        view1.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(10)
            make.top.equalTo(view.snp.bottom).offset(10)
            make.size.equalTo(CGSize(width: 50, height: 50))
        }
    }

    func hello() {
        baseNetworking.pathWithMock(path: "a502da3655bfdf37e6b7fed0dc48eabf/yimjisdm/resendInvoice", par: nil) { res in
            print(res)
            print("hello")
        }
        view.bg(cor.randomCor())
    }

    func hello1() {
        let par = ["1": "2"]
        baseNetworking.pathWithMock(path: "a502da3655bfdf37e6b7fed0dc48eabf/yimjisdm/queryInvoiceOrder", par: par) { res in
            print(res)
            print("hello1")
        }
        view.bg(cor.randomCor())
    }
}
