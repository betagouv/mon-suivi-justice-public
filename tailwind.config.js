module.exports = {
  purge: {
    content: [
      './app/views/**/*.html.erb',
      './app/helpers/**/*rb',
      './app/javascript/**/*.js'
    ]
  },
  theme: {
    extend: {
      colors: {
        'msj-blue': '#5770BB',
        'msj-green': '#0C866F',
        'msj-background': '#f5f4f1',
        'msj-clear-background': '#FFFFFF',
        'msj-dark-background': '#F0F0F0',
        'msj-border': '#DCD9D9',
        'msj-white-text': '#FFFFFF',
        'msj-grey-text': '#808080',
        'msj-dark-grey-text': '#6A6A6A',
        'msj-home-grey': '#ebeae5',
        'msj-red': 'tomato'
      },
      screens: {
        'sm': '576px',
        'md': '768px',
        'lg': '992px',
        'xl': '1248px',
        '2xl': '1536px'
      },
      boxShadow: {
        'top-xs': '0px -1px 16px 0px rgba(0, 0, 0, 0.1)',
      }
    },
  },
  plugins: [],
}
