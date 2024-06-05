import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="booking"
export default class extends Controller {
  static targets = ["totalPrice"]

  connect() {
    console.log("Hello, I am connected");
  }

  fire() {
    this.totalPriceTarget.innerText = `$500`;
  }
}
