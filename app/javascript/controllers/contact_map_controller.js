import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="contact-map"
export default class extends Controller {
  static values = {
    apiKey: String
  }

  connect() {

    console.log("hello 123")
    mapboxgl.accessToken = this.apiKeyValue

    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/mapbox/streets-v10",
      center: [57.5522, -20.3000],
      zoom: 12
    })
    new mapboxgl.Marker()
    .setLngLat([57.5208, -20.2175 ])
    .addTo(this.map)

  }
}
