import '@hotwired/turbo-rails'
import 'trix'
import 'trix/dist/trix.css'
import '@rails/actiontext'

import 'controllers'
import 'static'

import '@gouvfr/dsfr/dist/dsfr/dsfr.css'
import '@gouvfr/dsfr/dist/dsfr/dsfr.module.min.js'
import '../../stylesheets/application.scss'

// Allow to use image_pack_tag with images in frontend folder
require.context('../../images', true)
