//
//  PrincipalViewController.swift
//  HiChat
//
//  Created by Luan on 12/12/19.
//  Copyright © 2019 Luan. All rights reserved.
//

import UIKit
import WebKit

class ChatWeb: UIViewController, WKNavigationDelegate {

    @IBOutlet weak var webChat: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "Chat"

        self.webChat.navigationDelegate = self
        
        if let path = Bundle.main.path(forResource: "Chat", ofType: "plist")
        {
            if let dictRoot = NSDictionary(contentsOfFile: path)
            {
                let dictUrl = dictRoot.value(forKey: "Url") as! NSArray
                
                let urlBot = dictUrl[0] as! NSDictionary
                
                let urlString = urlBot.value(forKey: "BotUrl") as! String

                let url = URL(string: urlString)!
                let request = URLRequest (url: url)

                self.webChat.load(request)
            }
        }
    }

    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        
        if(requestIsDownloadable(request: navigationAction.request))
        {
            if let url = navigationAction.request.url{
                UIApplication.shared.open(url)
            }
        }
        
        return decisionHandler(.allow)
    }
    
    
    func requestIsDownloadable( request: URLRequest) -> Bool
    {
        let requestString : NSString = (request.url?.absoluteString)! as NSString
        let fileType : String = requestString.pathExtension
        print(fileType)
        let isDownloadable : Bool = (
            fileType.caseInsensitiveCompare("txt") == ComparisonResult.orderedSame ||
            fileType.caseInsensitiveCompare("doc") == ComparisonResult.orderedSame ||
                fileType.caseInsensitiveCompare("docx") == ComparisonResult.orderedSame ||
                fileType.caseInsensitiveCompare("ppt") == ComparisonResult.orderedSame ||
                fileType.caseInsensitiveCompare("pps") == ComparisonResult.orderedSame ||
                fileType.caseInsensitiveCompare("pdf") == ComparisonResult.orderedSame ||
                fileType.caseInsensitiveCompare("xls") == ComparisonResult.orderedSame ||
                fileType.caseInsensitiveCompare("xlsx") == ComparisonResult.orderedSame ||
                fileType.caseInsensitiveCompare("html") == ComparisonResult.orderedSame ||
                fileType.caseInsensitiveCompare("json") == ComparisonResult.orderedSame ||
                fileType.caseInsensitiveCompare("jpeg") == ComparisonResult.orderedSame ||
                fileType.caseInsensitiveCompare("jpg") == ComparisonResult.orderedSame ||
                fileType.caseInsensitiveCompare("png") == ComparisonResult.orderedSame ||
                fileType.caseInsensitiveCompare("gif") == ComparisonResult.orderedSame ||
                fileType.caseInsensitiveCompare("mp3") == ComparisonResult.orderedSame ||
                fileType.caseInsensitiveCompare("avi") == ComparisonResult.orderedSame ||
                fileType.caseInsensitiveCompare("mid") == ComparisonResult.orderedSame ||
                fileType.caseInsensitiveCompare("mpg") == ComparisonResult.orderedSame ||
                fileType.caseInsensitiveCompare("mp4") == ComparisonResult.orderedSame ||
                fileType.caseInsensitiveCompare("zip") == ComparisonResult.orderedSame ||
                fileType.caseInsensitiveCompare("rar") == ComparisonResult.orderedSame ||
                fileType.caseInsensitiveCompare("gif") == ComparisonResult.orderedSame)
        
        return isDownloadable
    }
    
    @IBAction func actBtnFechar(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}


