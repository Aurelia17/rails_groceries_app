import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="order-item"
export default class extends Controller {
  static targets = ["totalprice", "quantity"]
  static values = { price: String}

  test() {
    const quantity = this.quantityTarget.value;
    const unitPrice = parseInt(this.priceValue);
    const totalPrice= quantity * unitPrice
    this.totalpriceTarget.value = totalPrice;
  }
}
