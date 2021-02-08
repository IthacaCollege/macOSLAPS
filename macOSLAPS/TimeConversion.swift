///
///  TimeConversion.swift
///  macOSLAPS
///
///  Created by Joshua D. Miller on 6/13/17.
///  The Pennsylvania State University
///

import Foundation

class TimeConversion: NSObject {
    // Windows to Epoch time converter and vice versa
    class func epoch(exp_time: String) -> Date? {
        let converted_time = Double((Int(exp_time)! / 10000000 - 11644473600))
        let pw_expires_date = Date(timeIntervalSince1970: converted_time)
        return(pw_expires_date)
    }
    class func windows() -> String? {
        let new_expiration_time = Calendar.current.date(byAdding: .day, value: Constants.days_till_expiration, to: Date())!
        let new_conv_time = Int(new_expiration_time.timeIntervalSince1970)
        let new_ad_expiration_time = String((new_conv_time + 11644473600) * 10000000)
        return(new_ad_expiration_time)
    }
}

