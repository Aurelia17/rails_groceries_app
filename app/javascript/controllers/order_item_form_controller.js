import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ['quantityInput', 'totalPriceInput'];

  calculateTotalPrice() {
    const quantity = this.quantityInputTarget.value;
    const productPrice = this.data.get('productPrice');
    const totalPrice = quantity * productPrice;

    this.totalPriceInputTarget.value = totalPrice.toFixed(2);
  }
}
