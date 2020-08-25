const purgecss = require('@fullhuman/postcss-purgecss')({
    content: [
      './js/app.js',
      "../lib/**/*.ex",
      "../lib/**/*.eex",
      "../lib/**/*.leex",
    ],

    defaultExtractor: (content) => content.match(/[\w-/.:]+(?<!:)/g) || [],
  });


module.exports = {
  plugins: [
    require("postcss-import"),
    require("tailwindcss"),
    require("autoprefixer"),
    require('postcss-nested'),
    ...(process.env.NODE_ENV == 'production' ? [purgecss] : []),
  ]
};
