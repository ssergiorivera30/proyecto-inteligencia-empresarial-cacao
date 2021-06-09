module.exports = {
  	purge: ['./index.html', './src/**/*.{vue,js,ts,jsx,tsx}'],
   	darkMode: false, // or 'media' or 'class'
    theme: {      
      extend: {
        colors:{
          'principal-color-ui': {
            light: '#3c3e89',
            DEFAULT: '#3c3e89',
            dark: '#3c3e89'
          },
          'my-primary':{
            light: '#3c3e89',
            DEFAULT: '#3c3e89',
            dark: '#3c3e89'
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
        borderWidth: {
          DEFAULT: '1px',
          '0': '0',
          '2': '2px',
          '3': '3px',
          '4': '4px',
         '6': '6px',
         '8': '8px',
        }
      },
    },
    variants: {
      extend: {},
    },
    plugins: [],
}