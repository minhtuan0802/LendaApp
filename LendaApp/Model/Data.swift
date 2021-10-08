//
//  Data.swift
//  LendaApp
//
//  Created by Ngô Minh Tuấn on 18/09/2021.
//

import Foundation
import Firebase

class UserInformation {
    var id = ""
    var name = ""
    var email = ""
    var inforContract: [String: String] = ["LoanFormat": "","LoanAmount": "","InterestRate": "","LoanDuration": "","PayFormat": "","FullName": "","NumberPhone": "","Address": ""]
    
}
