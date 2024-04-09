//
//  File.swift
//  
//
//  Created by Jirayusm on 23/1/2567 BE.
//

import Foundation
import SwiftUI

protocol DemoProtocols: AnyObject {
    var presenter: DemoInteractorDelegateProtocol? { get set }
}

protocol DemoInteractorDelegateProtocol: AnyObject {
    func demo(demo: Bool)
}
