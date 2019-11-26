// MARK: - Mocks generated from file: SwiftServerTest/RequestNetworking.swift at 2019-11-26 03:45:36 +0000

//
//  RequestNetworking.swift
//  SwiftServerTest
//
//  Created by Tyler on 2019/11/26.
//  Copyright © 2019 tyler. All rights reserved.
//

import Cuckoo
@testable import SwiftServerTest

import Foundation


 class MockRequestNetworking: RequestNetworking, Cuckoo.ProtocolMock {
    
     typealias MocksType = RequestNetworking
    
     typealias Stubbing = __StubbingProxy_RequestNetworking
     typealias Verification = __VerificationProxy_RequestNetworking

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: RequestNetworking?

     func enableDefaultImplementation(_ stub: RequestNetworking) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func request(closure: @escaping (GitHub) -> Void)  {
        
    return cuckoo_manager.call("request(closure: @escaping (GitHub) -> Void)",
            parameters: (closure),
            escapingParameters: (closure),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.request(closure: closure))
        
    }
    

	 struct __StubbingProxy_RequestNetworking: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func request<M1: Cuckoo.Matchable>(closure: M1) -> Cuckoo.ProtocolStubNoReturnFunction<((GitHub) -> Void)> where M1.MatchedType == (GitHub) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<((GitHub) -> Void)>] = [wrap(matchable: closure) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockRequestNetworking.self, method: "request(closure: @escaping (GitHub) -> Void)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_RequestNetworking: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func request<M1: Cuckoo.Matchable>(closure: M1) -> Cuckoo.__DoNotUse<((GitHub) -> Void), Void> where M1.MatchedType == (GitHub) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<((GitHub) -> Void)>] = [wrap(matchable: closure) { $0 }]
	        return cuckoo_manager.verify("request(closure: @escaping (GitHub) -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class RequestNetworkingStub: RequestNetworking {
    

    

    
     func request(closure: @escaping (GitHub) -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}

