//
//  RequestNetworking.swift
//  SwiftServerTest
//
//  Created by Tyler on 2019/11/26.
//  Copyright © 2019 tyler. All rights reserved.
//

import Foundation

protocol RequestNetworking {
    func request(closure: @escaping (GitHub) -> Void)
}
