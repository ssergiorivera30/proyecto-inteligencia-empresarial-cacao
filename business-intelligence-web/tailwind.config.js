module.exports = {
  purge: [],
  purge: ['./index.html', './src/**/*.{vue,js,ts,jsx,tsx}'],
   darkMode: false, // or 'media' or 'class'
   theme: {
    textColor: theme => theme('colors'),
    textColor: {
      'darkslateblue': '#483d8b',
    }
   },
   variants: {
     extend: {},
   },
   plugins: [],
 }