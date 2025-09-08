//
//  FormattedDiskInfo.swift
//  DiskAnaliser
//
//  Created by Prajjwal on 08/09/25.
//

import Foundation

struct FormattedDiskInfo: Identifiable {
    let id = UUID()
    let title: String
    let size: Int64
    let totalSize: Int64
    
    var formattedSize: String {
        ByteCountFormatter.string(fromByteCount: size * 1024, countStyle: .file)
    }
    var formattedTotalSize: String {
        ByteCountFormatter.string(fromByteCount: totalSize * 1024, countStyle: .file)
    }
    static var example: FormattedDiskInfo {
        FormattedDiskInfo(title: "System", size: 11 * 1024 * 1024, totalSize: 910 * 1024 * 1024)
    }
}
