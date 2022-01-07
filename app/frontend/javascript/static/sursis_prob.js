import { updatePictos } from './dropdown'

document.addEventListener('turbo:load', function (event) {
  ['sursis-prob1', 'sursis-prob2', 'sursis-prob3', 'sursis-prob4', 'sursis-prob5'].forEach(menuId => updatePictos(menuId))
})
