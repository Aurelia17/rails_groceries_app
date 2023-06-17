import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="order-item"
export default class extends Controller {
  static targets = ["totalprice", "quantity"]
  static values = { price: String}
  connect() {
    console.log("hello");
  }
  test() {
    const quantity = this.quantityTarget.value;
    const unitPrice = parseInt(this.priceValue);
    const totalPrice= quantity * unitPrice
    console.log(totalPrice);
    this.totalpriceTarget.value = totalPrice;
  }
}
