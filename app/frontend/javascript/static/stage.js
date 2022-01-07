import { updatePictos } from './dropdown'

document.addEventListener('turbo:load', function (event) {
  ['stage1', 'stage2', 'stage3', 'stage4', 'stage5'].forEach(menuId => updatePictos(menuId))
})
