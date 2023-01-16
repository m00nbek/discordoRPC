//
//  Helpers.swift
//  DiscordoRPC
//
//  Created by m00nbek Melikulov on 1/16/23.
//

import Foundation

func getFileExt(_ file: String) -> String? {
    if let ext = file.split(separator: ".").last {
        return String(ext)
    }
    return nil
}

func withoutFileExt(_ file: String) -> String {
    if !file.contains(".") || file.last == "." {
        return file
    }

    var ret = file
    while (ret.popLast() != ".") {}
    return ret
}

