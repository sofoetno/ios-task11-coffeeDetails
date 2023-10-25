import UIKit

enum CofeeSize {
    case S, M, L
}

struct Coffee {
    var name: String
    var subtitle: String
    var description: String
    var size: CofeeSize
    var rating: Rating
    var price: Float
}

struct Rating {
    var avarage: Float
    var numberOfRatings: Int
}

class ViewController: UIViewController {
    
    var coffee: Coffee?

    @IBOutlet weak var SButton: UIButton!

    @IBOutlet weak var MButton: UIButton!
    
    @IBOutlet weak var LButton: UIButton!
    
    @IBOutlet weak var Name: UILabel!
    
    @IBOutlet weak var Subtitle: UILabel!
    
    @IBOutlet weak var NumberOfRatings: UILabel!
    
    @IBOutlet weak var AverageRating: UILabel!
    
    @IBOutlet weak var Description: UITextField!
    
    @IBOutlet weak var Price: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        SButton.layer.borderWidth = 1
        SButton.layer.cornerRadius = 12
        SButton.layer.borderColor = CGColor(red: 0.871, green: 0.871, blue: 0.871, alpha: 1)
        
        MButton.layer.borderWidth = 1
        MButton.layer.cornerRadius = 12
        MButton.layer.borderColor = CGColor(red: 0.776, green: 0.486, blue: 0.306, alpha: 1)
        MButton.layer.backgroundColor = CGColor(red: 1, green: 0.959, blue: 0.933, alpha: 1)

        
        LButton.layer.borderWidth = 1
        LButton.layer.cornerRadius = 12
        LButton.layer.borderColor = CGColor(red: 0.871, green: 0.871, blue: 0.871, alpha: 1)
        
        coffee = Coffee(name: "Capuccino", subtitle: "With chocolate", description: "A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the", size: CofeeSize.M, rating: Rating(avarage: 4.8, numberOfRatings: 230), price: 83)
        
        Name.text = coffee?.name
        Subtitle.text = coffee?.subtitle
        Description.text = coffee?.description
        if let numberOfRating = coffee?.rating.numberOfRatings {
            NumberOfRatings.text = String(numberOfRating)
        }
        if let averageRating = coffee?.rating.avarage {
            AverageRating.text = String(averageRating)
        }
        if let price = coffee?.price {
            Price.text = "$ \(price)"
        }
    }



}

