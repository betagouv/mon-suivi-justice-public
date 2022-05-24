document.addEventListener('DOMContentLoaded', function () {
  fetch('/get_all_pages')
    .then((res) => {
      if (res.ok) {
        return res.json()
      } else {
        return Promise.reject(res)
      }
    })
    .then((json) => {
      const zipCodeSelector = document.getElementById('zip_code_selector')
      const cardsContainer = document.getElementById(
        'spip_and_sap_cards_container'
      )

      zipCodeSelector.addEventListener('change', (e) => {
        while (cardsContainer.firstChild) {
          cardsContainer.removeChild(cardsContainer.lastChild)
        }
        const selectedPages = json.data.filter((p) => {
          return p.attributes.content.find((content) => {
            return content.zip_code_select === e.target.value
          })
        })

        if (selectedPages.length > 0) {
          if (!cardsContainer.classList.contains('fr-grid-row--gutters')) {
            cardsContainer.classList.add('fr-grid-row--gutters')
          }

          selectedPages.forEach((p) => {
            const spinaTitlePart = p.attributes.content.find((content) => {
              return content.main_title
            })

            const linkText = spinaTitlePart
              ? spinaTitlePart.main_title
              : 'Titre absent';

            const spinaViewTemplate = p.attributes.view_template

            if (linkText && spinaViewTemplate) {
              const seoTitle = p.attributes.seo_title
              const card = document.createElement('div')
              card.classList.add(
                'fr-col-6',
                'fr-col-lg-3',
                'fr-mb-2w',
                'text-center'
              )
              const link = document.createElement('a')
              link.title = seoTitle
              link.href = `/${spinaViewTemplate}`
              link.innerText = linkText
              link.classList.add('basic-card-link', 'border-blue')
              card.appendChild(link)
              cardsContainer.appendChild(card)
            }
          })
        } else {
          cardsContainer.classList.remove('fr-grid-row--gutters')
          cardsContainer.innerText =
            "Il n'y a pas encore de SAP ou de SPIP référencé sur Mon Suivi Justice pour ce département"
        }
      })
    })
    .catch((err) => {
      alert(err)
    })
})

document.addEventListener('turbolinks:before-cache', function () {
  // ...
})
