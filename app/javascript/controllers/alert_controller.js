import { Controller } from "@hotwired/stimulus"
import Swal from "sweetalert2"

export default class extends Controller {
  static values = {
    icon: String,
    alertTitle: String,
    alertHtml: String,
    confirmButtonText: String,
    showCancelButton: Boolean,
    cancelButtonText: String
  }
  static targets = ["alert"]

  initSweetalert(event) {
    // Prevent the form to be submited after the submit button has been clicked
    event.preventDefault();
    Swal.fire({
      icon: 'success',
      title: 'Your cart has been updated',
      showConfirmButton: false,
    })
    setTimeout(() => {
      event.target.submit(); // Submit the form after a 2-second delay
    }, 1500);

  }

  // removeAlert(event) {
  //   // Prevent the form to be submited after the submit button has been clicked
  //   event.preventDefault();
  //   Swal.fire({
  //     title: 'Are you sure?',
  //     text: "You won't be able to revert this!",
  //     icon: 'warning',
  //     showCancelButton: true,
  //     confirmButtonColor: '#3085d6',
  //     cancelButtonColor: '#d33',
  //     confirmButtonText: 'Yes, remove it!'
  //   }).then((result) => {
  //     if (result.isConfirmed) {
  //       Swal.fire(
  //         'Removed!',
  //         'Your product has been removed from your cart.',
  //         'success'
  //       )
  //     }
  //   })
  // }
}
