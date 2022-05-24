import { Controller } from '@hotwired/stimulus'

export default class extends Controller {
  // static targets = [ "name" ]
  static values = { url: '/get_all_pages' }

  connect () {
    this.load()
  }

  load () {
    window.fetch(this.urlValue)
      .then((res) => {
        if (res.ok) {
          console.log('retour api', res.json())
          return res.json()
        } else {
          return Promise.reject(res)
        }
      }).catch((err) => {
        window.alert(err)
      })
  }
}
