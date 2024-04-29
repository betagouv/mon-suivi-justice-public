module.exports = {
  parser: 'postcss-scss',
  plugins: {
    'postcss-simple-vars': {},
    'postcss-mixins': {},
    'postcss-import': { path: ['node_modules'] },
    'postcss-nesting': {},
    autoprefixer: {},
    'postcss-replace': {
      pattern: /(?:\.\.\/){0,2}icons\/\w+\//,
      data: { replaceAll: '' }
    }
  }
}
