module.exports = {
  	purge: ['./index.html', './src/**/*.{vue,js,ts,jsx,tsx}'],
   	darkMode: false, // or 'media' or 'class'
    theme: {      
      extend: {
        colors:{
          'principal-color-ui': {
            light: '#323c79',
            DEFAULT: '#323c79',
            dark: '#323c79'
          },
          'my-primary':{
            light: '#323c79',
            DEFAULT: '#323c79',
            dark: '#323c79'
          },
          'my-secondary':{
            light: '#6495ed',
            DEFAULT: '#6495ed',
            dark: '#6495ed'
          },
          'my-info':{
            light: '#6495ed',
            DEFAULT: '#6495ed',
            dark: '#6495ed'
          },
          'my-warning':{
            light: '#6495ed',
            DEFAULT: '#6495ed',
            dark: '#6495ed'
          },
          'my-danger':{
            light: '#6495ed',
            DEFAULT: '#6495ed',
            dark: '#6495ed'
          }
        },
      },
    },
    variants: {
      extend: {},
    },
    plugins: [],
}