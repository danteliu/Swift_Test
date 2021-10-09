//
//  baseNetworking.swift
//  Swift_Test
//
//  Created by liu dante on 2021/7/28.
//

import Alamofire
import UIKit
class baseNetworking: NSObject {
    class func pathWithMock(path: String, par: [String: Any]!, complete: @escaping ([String: Any]) -> Void) {
        print(par ?? [String: Any]())
        let basePath: String = "https://www.fastmock.site/mock/"
        AF.request(basePath + path, method: .post).responseJSON { response in
            switch response.result {
            case let .success(json):
                complete(json as! [String: Any])
                break
            case let .failure(error):
                print("error:\(error)")
                break
            }
        }
    }
}
