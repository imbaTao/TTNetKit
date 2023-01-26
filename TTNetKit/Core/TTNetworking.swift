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
    
    let provider = MoyaProvider<T>(plugins: [], trackInflights: false)
    public func request(_ target: T) -> Single<Response> {
        return provider.rx.request(target, callbackQueue: .main)
    }
}




