import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="booking"
export default class extends Controller {
  connect() {
    console.log("Hello, I am connected");
  }

  fire() {
    const pricePerDay = document.querySelector(".price").id;
    const startDates = document.querySelectorAll(".booking_start_date .form-select");
    const totalPrice = document.querySelector("#total-price");
    const startDateArray = [];
    const endDateArray = [];

    startDates.forEach((date) => {
      const option = date.querySelector("option:checked")
      startDateArray.push(option.value);
    })

    const endDates = document.querySelectorAll(".booking_end_date .form-select");
    endDates.forEach((date) => {
      const option = date.querySelector("option:checked")
      endDateArray.push(option.value);
    })

    const startDate = new Date(
      `${startDateArray[0]}-${startDateArray[1]}-${startDateArray[2]}`
    );

    const endDate = new Date(
      `${endDateArray[0]}-${endDateArray[1]}-${endDateArray[2]}`
    );

    const daysDiff = (endDate - startDate) / (24 * 60 * 60 * 1000);
    totalPrice.innerText = `Total Price: ${pricePerDay * daysDiff}`;
  }
}
