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

  collapse () {
    this.pictoExpandedTarget.classList.add('collapse-picto-inactive')
    this.pictoExpandedTarget.classList.remove('collapse-picto-active')
    this.pictoCollapsedTarget.classList.add('collapse-picto-active')
    this.pictoCollapsedTarget.classList.remove('collapse-picto-inactive')

    this.contentTarget.classList.add('d-none')
    this.contentTarget.classList.remove('d-flex')

    this.expandedValue = '0'
  }

  expand () {
    this.pictoExpandedTarget.classList.remove('collapse-picto-inactive')
    this.pictoExpandedTarget.classList.add('collapse-picto-active')
    this.pictoCollapsedTarget.classList.remove('collapse-picto-active')
    this.pictoCollapsedTarget.classList.add('collapse-picto-inactive')

    this.contentTarget.classList.remove('d-none')
    this.contentTarget.classList.add('d-flex')

    this.expandedValue = '1'
  }
}
