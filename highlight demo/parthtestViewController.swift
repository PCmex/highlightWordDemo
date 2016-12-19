//
//  parthtestViewController.swift
//  highlight demo
//
//  Created by Parth on 08/10/16.
//  Copyright © 2016 Parth. All rights reserved.
//

import UIKit

class parthtestViewController: UIViewController {

    @IBOutlet weak var txtView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let searchString = "Lorem Ipsum"
        let baseString = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard .Containing LOREM IPSUM passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem IPSUM"
        
        
        let attributed = NSMutableAttributedString(string: baseString)
        do
        {
            let regex = try! NSRegularExpression(pattern: searchString,options: .caseInsensitive)
            for match in regex.matches(in: baseString, options: NSRegularExpression.MatchingOptions(), range: NSRange(location: 0, length: baseString.characters.count)) as [NSTextCheckingResult] {
                attributed.addAttribute(NSBackgroundColorAttributeName, value: UIColor.yellow, range: match.range)
            }
            self.txtView.attributedText = attributed
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
