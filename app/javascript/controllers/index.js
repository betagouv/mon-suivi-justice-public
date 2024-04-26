import { application } from "./application"

import CollapseController from "./collapse_controller"
application.register("collapse", CollapseController)

import PreparerMonRdvController from "./preparer_mon_rdv_controller"
application.register("preparer-mon-rdv", PreparerMonRdvController)