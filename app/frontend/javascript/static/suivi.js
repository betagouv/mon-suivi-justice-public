import { updatePictos } from "./dropdown";

document.addEventListener("turbo:load", function(event) {
  ['suivi1', 'suivi2', 'suivi3', 'suivi4', 'suivi5'].forEach(menu_id => updatePictos(menu_id));
});
