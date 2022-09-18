import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="sentence-loading"
export default class extends Controller {

  connect() {
    console.log('hello')
    const listNodes = document.querySelectorAll('.sentence')
    const arrayNodes = [...listNodes];
    arrayNodes.reverse

    let i = 0;

    do {
      task(i);
      i++;
    } while (i < 19);

    function task(i) {
      setTimeout(function() {
        arrayNodes[i].classList.add("text-black");
        arrayNodes[i].classList.add("transition-colors");
        arrayNodes[i].classList.add("duration-700");
        arrayNodes[i].classList.add("ease-in");
        arrayNodes[i].classList.add("decoration-blue");
      }, 300 * i);
    }
  }
}
