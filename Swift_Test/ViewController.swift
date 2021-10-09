//
//  ViewController.swift
//  Swift_Test
//
//  Created by liu dante on 2021/7/27.
//

import UIKit
import Cupcake
import SnapKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.bg(Color("random")!).onTap {
            self.navigationController?.pushViewController(CustomerCellVC.init(), animated: true)
        }
        self.navigationController?.navigationBar.isTranslucent = false
        let view=View.addTo(self.view).bg(UIColor.red).onTap {
            self.hello()
        }
        view.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(10)

            make.top.equalToSuperview().offset(10)
            make.size.equalTo(CGSize.init(width: 50, height: 50))
        }
        
        let view1=View.addTo(self.view).bg(UIColor.blue).onTap {
            self.hello1()
        }
        view1.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(10)
            make.top.equalTo(view.snp.bottom).offset(10)
            make.size.equalTo(CGSize.init(width: 50, height: 50))
        }
        
    
    }
    func hello() -> Void {
        
        baseNetworking.pathWithMock(path:"a502da3655bfdf37e6b7fed0dc48eabf/yimjisdm/resendInvoice", par: nil) { res in
            print(res)
            print("hello")
        }

        self.view.bg(Color("random")!)
    }
    func hello1() -> Void {
        let par = ["1":"2"]
        baseNetworking.pathWithMock(path:"a502da3655bfdf37e6b7fed0dc48eabf/yimjisdm/queryInvoiceOrder",par:par) { res in
            print(res)
            print("hello1")

        }

        self.view.bg(Color("random")!)
    }
}

