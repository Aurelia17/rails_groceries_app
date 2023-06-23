import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["form", "input", "list", "tag"]

  connect() {
    console.log("HALLLLLLLLLLLLLOOOOOOOOOOOO")
  }

  update() {
    const url = `${this.formTarget.action}?query=${this.inputTarget.value}`
    fetch(url, {headers: {"Accept": "text/plain"}})
      .then(response => response.text())
      .then((data) => {
        this.listTarget.outerHTML = data
      })
  }

  tags() {
    console.log(this.tagTarget.textContent);
    const url = `${this.formTarget.action}?query=${this.tagTarget.textContent}`
    fetch(url, {headers: {"Accept": "text/plain"}})
      .then(response => response.text())
      .then((data) => {
        this.listTarget.outerHTML = data
      })
  }
}
