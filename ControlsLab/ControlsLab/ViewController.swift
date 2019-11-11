import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var segmentedControlLabel: UILabel!
    
    
    @IBOutlet weak var stepperLabel: UILabel!
    
    @IBOutlet weak var topLabelValue: UILabel!
    
    @IBOutlet weak var bottomLabelValue: UILabel!
    
    @IBOutlet weak var topSuit: UIImageView!
    
    @IBOutlet weak var midSuit: UIImageView!
    
    @IBOutlet weak var bottomSuit: UIImageView!
    
    
    
    var currentNum = 1
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func suitSegmentButton(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex{
        case 0:
            topSuit.image = #imageLiteral(resourceName: "images")
            midSuit.image = #imageLiteral(resourceName: "images")
            bottomSuit.image = #imageLiteral(resourceName: "images")
        case 1:
            topSuit.image = #imageLiteral(resourceName: "29-296357_plain-red-heart-shape-transparent-background-heart-png.png.jpeg")
            midSuit.image = #imageLiteral(resourceName: "29-296357_plain-red-heart-shape-transparent-background-heart-png.png.jpeg")
            bottomSuit.image = #imageLiteral(resourceName: "29-296357_plain-red-heart-shape-transparent-background-heart-png.png.jpeg")
        case 2:
            topSuit.image = #imageLiteral(resourceName: "club-deck-of-cards-custom-home-fashions")
            midSuit.image = #imageLiteral(resourceName: "club-deck-of-cards-custom-home-fashions")
            bottomSuit.image = #imageLiteral(resourceName: "club-deck-of-cards-custom-home-fashions")
        case 3:
            topSuit.image = #imageLiteral(resourceName: "images-1")
            midSuit.image = #imageLiteral(resourceName: "images-1")
            bottomSuit.image = #imageLiteral(resourceName: "images-1")
            
        default:
            print("welp, ya broke it!")
        }
    }
    
    @IBAction func stepperButton(_ sender: UIStepper) {
        currentNum = Int(sender.value)
        print(currentNum)
        topLabelValue.text = "\(currentNum)"
        bottomLabelValue.text = "\(currentNum)"
        if currentNum == 1{
            topLabelValue.text = "A"
            bottomLabelValue.text = "A"
        }
        if currentNum == 11{
            topLabelValue.text = "J"
            bottomLabelValue.text = "J"
        }
        if currentNum == 12{
        topLabelValue.text = "Q"
        bottomLabelValue.text = "Q"
        }
        if currentNum == 13{
        topLabelValue.text = "K"
        bottomLabelValue.text = "K"
        }
    }
    

    
//    var selectedSegment:Int = 0 {
//        didSet{
//            switch suitSegmentButton
//
//
//
//
//        }
//    }
    
    
    
}

