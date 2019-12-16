//
//  PrincipalViewController.swift
//  HiChat
//
//  Created by Luan on 12/12/19.
//  Copyright © 2019 Luan. All rights reserved.
//

import UIKit

class ChatViewController: UIViewController, UIWebViewDelegate {

    @IBOutlet weak var webViewChat: UIWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "Chat"

        webViewChat.delegate = self
        
        carregarWebView()
    }

    func carregarWebView(){
//        var dictRoot: NSDictionary?
//        if let path = Bundle.main.path(forResource: "CHAT", ofType: "plist") {
//            dictRoot = NSDictionary(contentsOfFile: path)
//        }
//
//        if dictRoot != nil
//        {
//            let arrayList:[NSDictionary] = dictRoot?["links"] as! Array
//            // Now a loop through Array to fetch single Item from catList which is Dictionary
//            arrayList.forEach({ (dict) in
//                let link =  (dict["BOT_URL"]!)
//                //print("Category Id \(dict["cid"])")
//                let UrlString = link
//                let url = URL(string: UrlString as! String)!
//                let request = URLRequest (url: url)
//                webViewChat.loadRequest(request)
//            })
//        }
        
        
        
        // outro modo
        
//        var nsDictionary: NSDictionary?
//        if let path = Bundle.main.path(forResource: "Chat", ofType: "plist") {
//            nsDictionary = NSDictionary(contentsOfFile: path)
//            let UrlString = path
//            let url = URL(string: UrlString)!
//            let request = URLRequest (url: url)
//            webViewChat.loadRequest(request)
//        }
//        let UrlString = path
//        let url = URL(string: UrlString)!
//        let request = URLRequest (url: url)
//        webViewChat.loadRequest(request)
    
    let UrlString = "https://www2.directtalk.com.br/chat31/?idd=048F00860658E0195375"
    let url = URL(string: UrlString)!
    let request = URLRequest (url: url)
    webViewChat.loadRequest(request)
    }
    
    func webView(_ webView: UIWebView, shouldStartLoadWith request: URLRequest, navigationType: UIWebView.NavigationType) -> Bool
    {
        if(requestIsDownloadable(request: request))
        {
            if let url = request.url{
                UIApplication.shared.open(url)
                
                return false
            }
        }
        
        return true
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
}


