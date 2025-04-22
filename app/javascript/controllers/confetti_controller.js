import { Controller } from "@hotwired/stimulus"
import JSConfetti from "js-confetti"

// Connects to data-controller="confetti"
export default class extends Controller {
  connect() {
    this.confetti = new JSConfetti()
    this.launch()
  }

  launch() {
    this.confetti.addConfetti({
      confettiColors: [
        '#ff0a54', '#ff477e', '#ff7096', '#ff85a1', '#fbb1bd', '#f9bec7',
      ],
      emojis: ["❤️", "💙", "🤍"], 
      emojiSize: 25,
      confettiRadius: 5,
      confettiNumber: 256
    })
  }

  disconnect(){
    if (this.confetti){
      this.confetti.clearCanvas()
    }
  }
}
