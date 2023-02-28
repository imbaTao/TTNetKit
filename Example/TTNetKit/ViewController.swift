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
    override func viewDidLoad() {
        super.viewDidLoad()
        // 目前的想法
        
        /**
         默认环境的设置，切换，自动切换
         1.
         */
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}


//class TTRuntimeGlobalConfig {
//    var netConfig = TTNetWorkingGlobalConfig()
//}


enum TTNetWorkingScence {
    case develop // 开发环境
    case test// 测试环境
    case release // 线上环境
}

class TTNetWorkingGlobalConfig: NSObject {
    static let share = TTNetWorkingGlobalConfig.init(scences: [.develop : .init()])
    var scences = [TTNetWorkingScence : TTNetWorkingGlobalConfigItem]()
    init(scences: [TTNetWorkingScence : TTNetWorkingGlobalConfigItem]) {
        super.init()
        self.scences = scences
    }
}

// 具体配置模型
struct TTNetWorkingGlobalConfigItem {
    var baseHost = ""
//    var basePort = 443
}
