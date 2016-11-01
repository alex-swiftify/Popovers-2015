//
//  ViewController.h
//  Popovers
//
//  Created by Jay Versluis on 17/10/2015.
//  Copyright © 2015 Pinkstone Pictures LLC. All rights reserved.
//
import UIKit
class ViewController: UIViewController, UIPopoverPresentationControllerDelegate {


    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func barButtonLeft(_ sender: Any) {
            // grab the view controller we want to show
        var storyboard = UIStoryboard(name: "Main", bundle: nil)
        var controller = storyboard.instantiateViewController(withIdentifier: "Pop")
        // present the controller
        // on iPad, this will be a Popover
        // on iPhone, this will be an action sheet
        controller.modalPresentationStyle = .popover
        self.present(controller, animated: true, completion: { _ in })
            // configure the Popover presentation controller
        var popController = controller.popoverPresentationController!
        popController.permittedArrowDirections = .any
        popController.barButtonItem = self.leftButton
        popController.delegate = self
    }

    @IBAction func barButtonRight(_ sender: Any) {
            // grab the view controller we want to show
        var storyboard = UIStoryboard(name: "Main", bundle: nil)
        var controller = storyboard.instantiateViewController(withIdentifier: "Pop")
        // present the controller
        // on iPad, this will be a Popover
        // on iPhone, this will be an action sheet
        controller.modalPresentationStyle = .popover
        self.present(controller, animated: true, completion: { _ in })
            // configure the Popover presentation controller
        var popController = controller.popoverPresentationController!
        popController.permittedArrowDirections = .up
        popController.delegate = self
        // in case we don't have a bar button as reference
        popController.sourceView = self.view
        popController.sourceRect = CGRect(x: 30, y: 50, width: 10, height: 10)
    }
//# pragma mark - Popover Presentation Controller Delegate

    func popoverPresentationControllerDidDismissPopover(_ popoverPresentationController: UIPopoverPresentationController) {
        // called when a Popover is dismissed
        print("Popover was dismissed with external tap. Have a nice day!")
    }

    func popoverPresentationControllerShouldDismissPopover(_ popoverPresentationController: UIPopoverPresentationController) -> Bool {
        // return YES if the Popover should be dismissed
        // return NO if the Popover should not be dismissed
        return true
    }

    func popoverPresentationController(_ popoverPresentationController: UIPopoverPresentationController, willRepositionPopoverToRect rect: CGRect, in view: UIView) {
        // called when the Popover changes positon
    }

    @IBOutlet var leftButton: UIBarButtonItem!
}
//
//  ViewController.m
//  Popovers
//
//  Created by Jay Versluis on 17/10/2015.
//  Copyright © 2015 Pinkstone Pictures LLC. All rights reserved.
//
