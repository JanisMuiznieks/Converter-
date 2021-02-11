//
//  ApperanceViewController.swift
//  Converter+
//
//  Created by janis.muiznieks on 10/02/2021.
//

import UIKit

class ApperanceViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLabelText()
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func openSettingsButtonTap(_ sender: Any) {
        openSettings()
    }
    
    @IBAction func closeButtonTap(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    func setLabelText() {
        var text = ""
        if self.traitCollection.userInterfaceStyle == .dark {
            text = "Dark Mode is On. Go to settings if you would like to change to Light Mode"
        } else {
            text = "Light Mode is On. Go to settings if you would like to change to Dark Mode"
        }
        textLabel.text = text
    }
    
    func openSettings() {
        guard let settingsURl = URL(string: UIApplication.openSettingsURLString) else { return }
        if UIApplication.shared.canOpenURL(settingsURl) {
            UIApplication.shared.open(settingsURl, options: [:]) {(success) in print("open: ", success)}
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
