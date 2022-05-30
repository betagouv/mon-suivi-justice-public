import { Controller } from '@hotwired/stimulus'

export default class extends Controller {
  static values = { url: String };
  static targets = ['zipCode', 'cardsContainer'];

  initialize () {
    this.loadPages()

    document.addEventListener('turbo:before-cache', () => {
      const zipCodeSelector = document.getElementById('zip_code_selector')

      for (let i = 0; i < zipCodeSelector.options.length; i++) {
        const option = zipCodeSelector.options[i]
        if (option.value === this.zipCodeTarget.value) {
          option.setAttribute('selected', true)
          return
        }
      }
    })
  }

  async loadPages () {
    try {
      const response = await window.fetch(this.urlValue)
      this.pages = await response.json()
    } catch (error) {
      window.alert(error)
    }
  }

  buildCards (zipCode) {
    let cards = ''

    const selectedPages = this.pages.data.filter((p) => {
      return p.attributes.content.find((content) => {
        return content.zip_code_select === this.zipCodeTarget.value
      })
    })

    selectedPages.forEach((p) => {
      const spinaTitlePart = p.attributes.content.find((content) => {
        return content.main_title
      })

      const linkText = spinaTitlePart
        ? spinaTitlePart.main_title
        : 'Titre absent'

      const spinaViewTemplate = p.attributes.view_template

      if (linkText && spinaViewTemplate) {
        cards += this.cardTemplate(linkText, spinaViewTemplate)
      }
    })

    if (cards) {
      this.cardsContainerTarget.innerHTML =
        cards || "Il n'y a pas de SPIP ou de SAP référencé pour ce département"

      if (
        !this.cardsContainerTarget.classList.contains('fr-grid-row--gutters')
      ) {
        this.cardsContainerTarget.classList.add('fr-grid-row--gutters')
      }
    } else {
      this.cardsContainerTarget.classList.remove('fr-grid-row--gutters')

      this.cardsContainerTarget.innerHTML =
        "Il n'y a pas de SPIP ou de SAP référencé pour ce département"
    }
  }

  cardTemplate (linkText, spinaViewTemplate) {
    return `<div class="fr-col-6 fr-col-lg-3 fr-mb-2w text-center">
      <a class="basic-card-link border-blue" href="${spinaViewTemplate}">${linkText}</a>
     </div>`
  }
}
