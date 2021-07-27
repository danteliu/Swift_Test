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
        self.view.bg(Color("random")!)
        self.navigationController?.navigationBar.isTranslucent = false
        let view=View.addTo(self.view).bg(UIColor.red).onTap {
            self.hello()
        }
        view.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(10)
            make.right.equalToSuperview().offset(-10)
            make.top.equalToSuperview().offset(10)
            make.bottom.equalToSuperview().offset(-30)
        }
    }
    func hello() -> Void {
        print("你好啊")
        self.view.bg(Color("random")!)
    }
}

