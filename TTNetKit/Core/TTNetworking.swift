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
    public enum RequestMethod {
        case get
        case post
    }

    var provider:MoyaProvider<T>!
    
    public init(_ plugins: [PluginType]) {
        super.init()
        provider = MoyaProvider<T>(plugins: plugins)
        
    }
    
    public func request(_ target: T) -> Observable<Response> {
        return provider.rx.request(target, callbackQueue: .main).asObservable()
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




