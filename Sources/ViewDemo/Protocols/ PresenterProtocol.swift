//
//  File.swift
//  
//
//  Created by Jirayusm on 23/1/2567 BE.
//

import Foundation
import SwiftUI

@available(iOS 13.0, *)
protocol DemoPresenterProtocol: AnyObject {
    associatedtype AssocDetails: View
    func detailsView(model: DemoObj) -> AssocDetails
}
