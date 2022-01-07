import { updatePictos } from './dropdown'

document.addEventListener('turbo:load', function (event) {
  ['amenagement1', 'amenagement2', 'amenagement3', 'amenagement4', 'amenagement5', 'amenagement5'].forEach(menuId => updatePictos(menuId))
})
