import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="price"
export default class extends Controller {
  static targets = ["start", "end", "price", "unit"]
  connect() {
  }

  calcPrice() {
    // console.log('Hello');
    const startDate = new Date(this.startTarget.value);
    const endDate = new Date(this.endTarget.value);
    const duration = (endDate - startDate) / (1000 * 60 * 60 * 24);
    if (duration >=0) {
      this.priceTarget.innerText = `Total : ${(duration * this.unitTarget.value).toFixed(2)}€`;
    } else {
      this.priceTarget.innerText = `Total : 0€`;
    }
  }
}
