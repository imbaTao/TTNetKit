//
//  TTNetworking.swift
//  Alamofire
//
//  Created by hong on 2023/1/13.
//

import Foundation
import Moya
import RxSwift
import NSObject_Rx

open class TTNetworking<T:TargetType>: NSObject {
   public private(set) var provider:MoyaProvider<T>!
    public init(_ plugins: [PluginType],_ customSession: Session? = nil) {
        super.init()
        if let customSession = customSession {
            provider = MoyaProvider<T>.init(session: customSession, plugins: plugins)
        }else {
            provider = MoyaProvider<T>.init(plugins: plugins)
        }
    }
}


public struct TTNetError: Error {
    public var code: Int
    public var message: String
    public init(code: Int, message: String) {
        self.code = code
        self.message = message
    }
}




