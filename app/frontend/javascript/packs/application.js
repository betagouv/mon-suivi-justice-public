import '@hotwired/turbo-rails'

import 'controllers'

import '@gouvfr/dsfr/dist/dsfr/dsfr.css'
import '@gouvfr/dsfr/dist/dsfr/dsfr.module.min.js'
import 'font-awesome/css/font-awesome.min.css'
import '../../stylesheets/application.scss'

// Allow to use image_pack_tag with images in frontend folder
require.context('../../images', true)
