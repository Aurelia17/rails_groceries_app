import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["form", "input", "list", "Tags", "Vin", "Alcool", "Chips"]


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
    //console.log(this.tagsTargets);
    // console.log(this.tagsTargets);
    const tags = this.tagsTargets;
    console.log("ntiee");

    // console.log("console", targets);
    const url = `${this.formTarget.action}?query=${this.tagsTargets.textContent}`
    fetch(url, {headers: {"Accept": "text/plain"}})
      .then(response => response.text())
      .then((data) => {
        this.listTarget.outerHTML = data
      })
  }
}
