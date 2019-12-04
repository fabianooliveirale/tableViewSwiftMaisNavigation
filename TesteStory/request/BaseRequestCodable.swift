//
//  BaseRequestCodable.swift
//  TesteStory
//
//  Created by Devmaker on 04/12/19.
//  Copyright © 2019 Devmaker. All rights reserved.
//

import Foundation
import UIKit
import Alamofire

class BaseRequestCodable: NSObject {
    
    var url             : String? = ""
    var method          : HTTPMethod?
    var parameters      : [String: Any]?
    var queryParameters : [String: String]?
    var encoding        : ParameterEncoding = JSONEncoding.default
    var headers         : HTTPHeaders?
   // var delegate        : RequestDelegate?
    var json            : Data?
    
    func request(block: @escaping (Data?, Error?)->() ) {
        
        var error:Error?
        
        let urlObj = URL(string: self.getUrl().addingPercentEncoding(withAllowedCharacters:NSCharacterSet.urlQueryAllowed) ?? "")!
        Alamofire.request(urlObj,
                          method    : method!,
                          parameters: parameters,
                          encoding  : encoding,
                          headers   : headers).responseData { (response) in
                            
                            switch response.result {
                                
                            case .success(let data):
                                let _json = data
                                self.json = _json
                            case .failure(let _error):
                                error = _error
                            }
                            
                           
                            block(self.json, error)
        }
    }
    
    private func getUrl()->String {
        return self.url! + self.getQueryParameters()
    }
    
    func getQueryParameters() -> String {
        if let query = self.queryParameters {
            var str = ""
            var concat = ""
            
            for (key, value) in query {
                if str.isEmpty {
                    concat = "?"
                } else {
                    concat = "&"
                }
                str = str + concat + key + "=" + value.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed)!
            }
            
            return str
        }
        
        return ""
    }


    
    func isResponseValid() -> Bool {
        if let json = self.json {
            let decoder = JSONDecoder()
            do {
            let data =  try decoder.decode(BaseResponse.self, from: json)
                let errorNull = !(data.Erro ?? false)
                return errorNull
            }catch{
                return false
            }
        }
        return false
    }
}

