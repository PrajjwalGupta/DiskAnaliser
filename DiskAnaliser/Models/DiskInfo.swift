//
//  DiskInfo.swift
//  DiskAnaliser
//
//  Created by Prajjwal on 08/09/25.
//

import Foundation

struct  DiskInfo {
    let fileSystemName: String
    let size: Int64
    let used: Int64
    let available: Int64
    let capacity: Int
    let mountPoint: String
    
    var isSystemVolumne: Bool {
        mountPoint == "/"
    }
    var isDataVolumne: Bool {
        mountPoint == "/System/Volumes/Data"
    }
}

extension Array where Element == DiskInfo {
    var systemVolume: DiskInfo? {
        first { $0.isSystemVolumne }
    }
    var dataVolume: DiskInfo? {
        first { $0.isDataVolumne }
    }
}
