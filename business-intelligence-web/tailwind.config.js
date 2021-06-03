module.exports = {
  	purge: ['./index.html', './src/**/*.{vue,js,ts,jsx,tsx}'],
   	darkMode: false, // or 'media' or 'class'
    theme: {      
      extend: {
        colors:{
          'principal-color-ui': {
            light: '#1ca78d',
            DEFAULT: '#1ca78d',
            dark: '#1ca78d'
          },
          'my-primary':{
            light: '#1ca78d',
            DEFAULT: '#1ca78d',
            dark: '#1ca78d'
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
        screens: {
          '3xl': '1600px',
        },
      },
    },
    variants: {
      extend: {},
    },
    plugins: [],
}