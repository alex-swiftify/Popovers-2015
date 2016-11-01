//
//  PopViewController.h
//  Popovers
//
//  Created by Jay Versluis on 17/10/2015.
//  Copyright © 2015 Pinkstone Pictures LLC. All rights reserved.
//
import UIKit
class PopViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()
            // add touch recogniser to dismiss this controller
        var tap = UITapGestureRecognizer(target: self, action: #selector(self.dismissMe))
        self.view.addGestureRecognizer(tap)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func dismissMe() {
        print("Popover was dismissed with internal tap")
        self.dismiss(animated: true, completion: { _ in })
    }
}
//
//  PopViewController.m
//  Popovers
//
//  Created by Jay Versluis on 17/10/2015.
//  Copyright © 2015 Pinkstone Pictures LLC. All rights reserved.
//