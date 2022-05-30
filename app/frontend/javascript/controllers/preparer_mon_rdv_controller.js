import { Controller } from '@hotwired/stimulus'

export default class extends Controller {
  // static targets = [ "name" ]
  static values = { url: String }
  static targets = ['zipCode']

  initialize () {
    this.loadPages()
  }

  async loadPages () {
    try {
      const response = await window.fetch(this.urlValue)
      console.log('toutes les pages', response.json())
    } catch (error) {
      window.alert(error)
    }
  }

  buildCards () {
    console.log('valeur de zipCode', this.zipCodeTarget.value)
  }

  cardTemplate (test) {
    return `<div>
    <h4>test</h4>
    <p>test</p>
    </div> `
  }
}
