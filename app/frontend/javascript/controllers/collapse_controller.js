import { Controller } from '@hotwired/stimulus'

export default class extends Controller {
  static targets = ['label', 'pictoCollapsed', 'pictoExpanded', 'content']
  static values = {
    expanded: Boolean
  }

  toggle () {
    if ([16,9].includes(event.keyCode)) { return; }
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

    this.contentTarget.classList.add('hidden')
    this.contentTarget.classList.remove('flex')

    this.expandedValue = '0'
  }

  expand () {
    this.pictoExpandedTarget.classList.remove('collapse-picto-inactive')
    this.pictoExpandedTarget.classList.add('collapse-picto-active')
    this.pictoCollapsedTarget.classList.remove('collapse-picto-active')
    this.pictoCollapsedTarget.classList.add('collapse-picto-inactive')

    this.contentTarget.classList.remove('hidden')
    this.contentTarget.classList.add('flex')

    this.expandedValue = '1'
  }
}
