//
//  NetworkingAgent.swift
//  MovieBookingApp
//
//  Created by Daniel Wilson on 7/24/21.
//

import Foundation
import Alamofire

struct MovieBookingDBNetworkAgent {
    static let shared = MovieBookingDBNetworkAgent()
    private init() { } // initialization ကိုပိတ်တာ
    // network call သည် asynchronous ဖြစ်လို @escaping သုံးရတာ
   
    // 1
    func getNSMovieList(success : @escaping (NSMovielistResponse) -> Void, failure : @escaping (String) -> Void){

        let url = "\(AppConstants.BaseURL)/api/v1/movies?api_key=\(AppConstants.apiKey)"
        AF.request(url)
 
            .responseDecodable(of: NSMovielistResponse.self) { response in
            switch response.result{
            case .success(let data):
                success(data)
            case .failure(let error):
                failure(error.errorDescription!)
            }
        }
    }
    


    



}
