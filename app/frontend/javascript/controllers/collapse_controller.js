import { Controller } from '@hotwired/stimulus'

export default class extends Controller {
  static targets = ['label', 'pictoCollapsed', 'pictoExpanded', 'content']
  static values = {
    expanded: Boolean
  }

  toggle () {
    if (this.expandedValue === true) {
      this.collapse()
    } else {
      this.expand()
    }
  }

  collapse() {
    this.pictoCollapsedTarget.classList.add('static-dropdown-picto-inactive')
    this.pictoCollapsedTarget.classList.remove('static-dropdown-picto-active')
    this.pictoExpandedTarget.classList.add('static-dropdown-picto-active')
    this.pictoExpandedTarget.classList.remove('static-dropdown-picto-inactive')

    this.contentTarget.classList.add("d-none")
    this.contentTarget.classList.remove("d-flex")

    this.expandedValue = "0"
  }

  expand() {
    this.pictoCollapsedTarget.classList.remove('static-dropdown-picto-inactive')
    this.pictoCollapsedTarget.classList.add('static-dropdown-picto-active')
    this.pictoExpandedTarget.classList.remove('static-dropdown-picto-active')
    this.pictoExpandedTarget.classList.add('static-dropdown-picto-inactive')

    this.contentTarget.classList.remove("d-none")
    this.contentTarget.classList.add("d-flex")

    this.expandedValue = "1"
  }
}
