    var firebaseConfig = {
      apiKey: "AIzaSyBytAdD5bIBtaaqeGZ3o1C_DJwoOzQK2w4",
      authDomain: "app-cacao-sena.firebaseapp.com",
      projectId: "app-cacao-sena",
      storageBucket: "app-cacao-sena.appspot.com",
      messagingSenderId: "752324770547",
      appId: "1:752324770547:web:e2700be43296c5a30a5586",
      measurementId: "G-PZ6D9CGYDT"
    };
    // Initialize Firebase
    firebase.initializeApp(firebaseConfig);


    // const BASE_API = 'http://192.168.1.5/proyecto-inteligencia-empresarial-cacao/api/php7/control/';
    // const BASE_ASSETS = 'http://192.168.1.5/proyecto-inteligencia-empresarial-cacao/api/ui/';

    const BASE_API = 'http://10.193.28.38/proyecto-inteligencia-empresarial-cacao/api/php7/control/';
    const BASE_ASSETS = 'http://10.193.28.38/proyecto-inteligencia-empresarial-cacao/api/ui/';

    // const BASE_API = 'http://127.0.0.1/proyecto-inteligencia-empresarial-cacao/api/php7/control/';
    // const BASE_ASSETS = 'http://127.0.0.1/proyecto-inteligencia-empresarial-cacao/api/ui/';

    // const BASE_API = ' http://grupodeinvestigacionnova.com/cacao/software/api/php7/control/';
    // const BASE_ASSETS = ' http://grupodeinvestigacionnova.com/cacao/software/api/ui/';

   


    new Vue({
      el: '#app',
      data: {

        SrcAPI: BASE_API,
        SrcAssets: BASE_ASSETS,

        MsgResponse: '',
        ClassStyle: '',
        
        NewCount: 0,
        
        UserEmail: '',
        UserPassword:'',
        
        UserNames:'',
        UserNewEmail:'',
        UserFirstPassword:'',
        UserConfirmPassword:'',

        EmailUserRecuperate: '',
      },
      mounted: function () {

      },
      methods: {
        
        LoginUserCount: function(){
          axios.post(BASE_API+'user_login.php', {
            UserEmail: this.UserEmail,
            UserPassword: this.UserPassword,
          }).then((response) =>{
            if(response.data['UserIsCorrect'] === true){
              this.NewCount = 3                            
            }else{              
              this.ReverseMessage(response.data['ClassStyle'], response.data['MsgResponse'])
            }
          }).catch(()=> {
            this.ReverseMessage('Error de conexión', 'text-red-900')
          })
        }, 
        RecuperateUserPassword: function(){

        },
        RegisterUser: function(){

        	if(this.UserFirstPassword != this.UserConfirmPassword){

        		this.ReverseMessage('text-red-900', 'Las contraseñas no coinciden')

        	} else {

        		axios.post(BASE_API+'user_create.php', {
		            UserNames: this.UserNames,
		            UserNewEmail: this.UserNewEmail,
		            UserFirstPassword: this.UserFirstPassword,
		            UserConfirmPassword: this.UserConfirmPassword
		          }).then((response) =>{
		                       
		            this.ReverseMessage(response.data['ClassStyle'], response.data['MsgResponse'])

		            if(response.data['ClassStyle'] === 'text-green-900'){

		                this.ResetForm()
		            }		              
		          
		         }).catch(()=> {

		            this.ReverseMessage('text-red-900', 'Error de conexión')
		        })
        	}          
        },
        LoginUserWitchGoogle() {
          const provider = new firebase.auth.GoogleAuthProvider();
          firebase
            .auth()
            .signInWithPopup(provider)
            .then(data => {
              // This gives you a Google Access Token.
              var token = data.credential.accessToken;
              // The signed-in user info.
              var user = data.user;
            })
            .catch(err => alert(err));
        },        
        ReverseMessage: function (ClassStyle, MsgResponse) {

          this.ClassStyle = ClassStyle
          this.MsgResponse = MsgResponse
        },
        ResetForm: function(){

          this.UserEmail = ''
          this.UserPassword = ''
          this.UserNames = ''
          this.UserNewEmail = ''
          this.UserFirstPassword = ''
          this.UserConfirmPassword = ''
          this.EmailUserRecuperate = ''

        }
      }
    })
