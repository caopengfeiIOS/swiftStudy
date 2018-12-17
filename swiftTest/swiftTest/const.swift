//
//  const.swift
//  swiftTest
//
//  Created by 曹鹏飞 on 2018/12/17.
//  Copyright © 2018年 jjs. All rights reserved.
//

import Foundation
import UIKit
//设备宽高、机型
public let kScreenHeight = UIScreen.main.bounds.size.height
public let kScreenWidth = UIScreen.main.bounds.size.width
public let kScaleW = (kScreenWidth/375.0)
public let kScaleH = (kScreenHeight/667.0)
// iphone X
let isIphoneX = kScreenHeight == 812 ? true : false
// navigationBarHeight
let navigationBarHeight : CGFloat = isIphoneX ? 88 : 64
// tabBarHeight
let tabBarHeight : CGFloat = isIphoneX ? 49 + 34 : 49
// MARK: ============================================================================
// MARK: Dictory Array Strig Object 闭包方式
///过滤null对象
public let kFilterNullOfObj:((Any)->Any?) = {(obj: Any) -> Any? in
    if obj is NSNull {
        return nil
    }
    return obj
}

///过滤null的字符串，当nil时返回一个初始化的空字符串
public let kFilterNullOfString:((Any)->String) = {(obj: Any) -> String in
    if obj is String {
        return obj as! String
    }
    return ""
}

/// 过滤null的数组，当nil时返回一个初始化的空数组
public let kFilterNullOfArray:((Any)->Array<Any>) = {(obj: Any) -> Array<Any> in
    if obj is Array<Any> {
        return obj as! Array<Any>
    }
    return Array()
}


/// 过滤null的字典，当为nil时返回一个初始化的字典
public let kFilterNullOfDictionary:((Any) -> Dictionary<AnyHashable, Any>) = {( obj: Any) -> Dictionary<AnyHashable, Any> in
    if obj is Dictionary<AnyHashable, Any> {
        return obj as! Dictionary<AnyHashable, Any>
    }
    return Dictionary()
    }
    
// MARK: ============================================================================
// MARK: 设置颜色
/// 设置颜色值
public let HexRGB:((Int) -> UIColor) = { (rgbValue : Int) -> UIColor in
    return HexRGBAlpha(rgbValue,1.0)
}

/// 通过 十六进制与alpha来设置颜色值  （ 样式： 0xff00ff ）
public let HexRGBAlpha:((Int,Float) -> UIColor) = { (rgbValue : Int, alpha : Float) -> UIColor in
    return UIColor(red: CGFloat(CGFloat((rgbValue & 0xFF0000) >> 16)/255), green: CGFloat(CGFloat((rgbValue & 0xFF00) >> 8)/255), blue: CGFloat(CGFloat(rgbValue & 0xFF)/255), alpha: CGFloat(alpha))
}


/// 通过 red 、 green 、blue 、alpha 颜色数值
public let RGBAlpa:((Float,Float,Float,Float) -> UIColor ) = { (r: Float, g: Float , b: Float , a: Float ) -> UIColor in
    return UIColor.init(red: CGFloat(CGFloat(r)/255.0), green: CGFloat(CGFloat(g)/255.0), blue: CGFloat(CGFloat(b)/255.0), alpha: CGFloat(a))
}
