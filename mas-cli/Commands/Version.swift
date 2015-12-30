//
//  Version.swift
//  mas-cli
//
//  Created by Andrew Naylor on 20/09/2015.
//  Copyright © 2015 Andrew Naylor. All rights reserved.
//

struct VersionCommand: CommandType {
    typealias Options = NoOptions<MASError>
    let verb = "version"
    let function = "Print version number"
    
    func run(options: Options) -> Result<(), MASError> {
        let plist = NSBundle.mainBundle().infoDictionary
        if let versionString = plist?["CFBundleShortVersionString"] {
            print(versionString)
        }
        return .Success(())
    }
}
