import { Controller } from '@hotwired/stimulus';

export default class extends Controller {
  static targets = ['quantityValue'];

  // Calculate and update the total price based on the quantity value
  calculateTotalPrice() {
    const quantity = parseInt(this.quantityValueTarget.value);
    const totalPriceInput = document.getElementById('total-price-input');
    const productPrice = parseFloat(totalPriceInput.dataset.productPrice);
    const totalPrice = quantity * productPrice;
    totalPriceInput.value = totalPrice.toFixed(2);
  }

  // Increment the quantity value and update the total price
  increment() {
    this.updateQuantityValue(1);
  }

  // Decrement the quantity value and update the total price
  decrement() {
    this.updateQuantityValue(-1);
  }

  // Update the quantity value and recalculate the total price
  updateQuantityValue(step) {
    const quantity = parseInt(this.quantityValueTarget.value) + step;
    if (quantity >= 1) {
      this.quantityValueTarget.value = quantity;
      this.calculateTotalPrice();
    }
  }
}
