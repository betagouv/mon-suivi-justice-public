function updatePictos (menuId) {
  const checkbox = document.getElementById('toggle-' + menuId)
  const pictoClosed = document.getElementById(menuId + '-picto-down')
  const pictoOpened = document.getElementById(menuId + '-picto-up')

  if (checkbox && pictoClosed && pictoOpened) {
    checkbox.addEventListener('change', e => {
      if (e.target.checked === true) {
        pictoClosed.classList.add('static-dropdown-picto-inactive')
        pictoClosed.classList.remove('static-dropdown-picto-active')
        pictoOpened.classList.add('static-dropdown-picto-active')
        pictoOpened.classList.remove('static-dropdown-picto-inactive')
      }

      if (e.target.checked === false) {
        pictoClosed.classList.add('static-dropdown-picto-active')
        pictoClosed.classList.remove('static-dropdown-picto-inactive')
        pictoOpened.classList.add('static-dropdown-picto-inactive')
        pictoOpened.classList.remove('static-dropdown-picto-active')
      }
    })
  }
}

exports.updatePictos = updatePictos
