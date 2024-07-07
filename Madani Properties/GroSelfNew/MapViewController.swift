import UIKit
import MapKit

class MapViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet var mapView: MKMapView!
    let fixedCoordinate = CLLocationCoordinate2D(latitude: 3.1264, longitude: 101.7119) // Example coordinate (One Residences – Kuala Lumpur)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.delegate = self
        mapView.mapType = .hybridFlyover // Use hybridFlyover for detailed view with building structures
        setupMap()
    }
    
    func setupMap() {
        let annotation = MKPointAnnotation()
        annotation.coordinate = fixedCoordinate
        mapView.addAnnotation(annotation)
        
        let region = MKCoordinateRegion(center: fixedCoordinate, latitudinalMeters: 1000, longitudinalMeters: 1000)
        mapView.setRegion(region, animated: true)
        
        // Set the camera for a 3D flyover view
        let camera = MKMapCamera(lookingAtCenter: fixedCoordinate, fromDistance: 1000, pitch: 65, heading: 0)
        mapView.setCamera(camera, animated: true)
    }
    
    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
        let region = MKCoordinateRegion(center: view.annotation!.coordinate, latitudinalMeters: 500, longitudinalMeters: 500)
        mapView.setRegion(region, animated: true)
        
        // Optionally, adjust the camera when the annotation is selected
        let camera = MKMapCamera(lookingAtCenter: view.annotation!.coordinate, fromDistance: 500, pitch: 65, heading: 0)
        mapView.setCamera(camera, animated: true)
    }
}
