//
//  ViewController.swift
//  TTNetKit
//
//  Created by imbatao@outlook.com on 01/13/2023.
//  Copyright (c) 2023 imbatao@outlook.com. All rights reserved.
//

import UIKit
import TTNetKit
import Moya

class ViewController: UIViewController {
    let loginNet = TTNetworking<LoginProvider>()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginNet.request(.login).subscribe { response in
            print("response is \(response.data),\(response.statusCode)")
        } onFailure: { error in
            
        } onDisposed: {
            
        }.disposed(by: rx.disposeBag)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}

class MyPlugin: Moya.PluginType {
    func willSend(_ request: RequestType, target: TargetType) {
        
    }
    
    func didReceive(_ result: Result<Response, MoyaError>, target: TargetType) {
        
    }
    
}













enum LoginProvider: String {
    case login = ""
}

extension LoginProvider: TargetType {
    var baseURL: URL {
        return .init(string: "https://www.baidu.com")!
    }
    
    var path: String {
        return self.rawValue
    }
    
    var method: Moya.Method {
        switch self {
        case .login:
            return .get
        }
    }
    
    var task: Moya.Task {
        return .requestPlain
    }
    
    var headers: [String : String]? {
        return nil
    }
    
    
}



