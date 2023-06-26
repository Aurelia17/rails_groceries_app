import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="order-item"
export default class extends Controller {
  static targets = ["totalprice", "quantity"]
  static values = { price: String, quantity: String}
  connect() {
  }
  
  test() {
    const quantity = this.quantityTarget.value;
    const unitPrice = parseInt(this.priceValue);
    const totalPrice= quantity * unitPrice
    console.log(totalPrice);
    this.totalpriceTarget.value = totalPrice;
  }
  reduce() {
    if (this.quantityTarget.value > 0) {
      const quantity = this.quantityTarget.value;
      const quantityReduced = quantity - 1;
      console.log(quantityReduced);
      this.quantityTarget.value = quantityReduced
      const unitPrice = parseInt(this.priceValue);
      const totalPrice= quantityReduced * unitPrice
      this.totalpriceTarget.value = totalPrice;
    }
  }

  reduce2() {
    if (this.quantityTarget.value > 1) {
      const quantity = this.quantityTarget.value;
      const quantityReduced = quantity - 1;
      console.log(quantityReduced);
      this.quantityTarget.value = quantityReduced
      const unitPrice = parseInt(this.priceValue);
      const totalPrice= quantityReduced * unitPrice
      this.totalpriceTarget.value = totalPrice;
    }
  }
  increase() {
    if (this.quantityTarget.value < parseInt(this.quantityValue)) {
      const quantity = this.quantityTarget.value;
      let quantityIncreased = quantity;
      ++quantityIncreased;
      this.quantityTarget.value = quantityIncreased
      const unitPrice = parseInt(this.priceValue);
      const totalPrice= quantityIncreased * unitPrice
      this.totalpriceTarget.value = totalPrice;
    }
  }
}
