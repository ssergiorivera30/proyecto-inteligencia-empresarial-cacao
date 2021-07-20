const BASE_API = 'http://localhost/proyecto-inteligencia-empresarial-cacao/api/php7/control/';
const BASE_ASSETS = 'http://localhost/proyecto-inteligencia-empresarial-cacao/api/ui-native/';

new Vue({
    el: '#app',
    data: {

        SrcAPI: BASE_API,
        SrcAssets: BASE_ASSETS,

        MsgResponse: '',
        ClassStyle: '',

        NewCount: 0,

        UserEmail: '',
        UserPassword: '',

        UserNames: '',
        UserLastNames: '',
        UserNewEmail: '',
        UserFirstPassword: '',
        UserConfirmPassword: '',

        EmailUserRecuperate: '',
    },
    beforeCreate: function() {
        // console.log('Sin crear')
    },
    mounted: function() {
        // console.log('Montado')
    },
    methods: {

        LoginUserCount: function() {

            let credentials = { UserEmail: this.UserEmail, UserPassword: this.UserPassword }

            fetch(BASE_API + 'user_login.php', {
                    method: 'POST',
                    body: JSON.stringify(credentials)
                })
                .then(response => response.json())
                .then((response) => {


                    if (response['UserIsCorrect'] === true && response['UserName'] != false) {
                        this.NewCount = 3
                        this.redirectToApp()
                    } else {
                        this.ReverseMessage(response['ClassStyle'], response['MsgResponse'])
                    }
                }).catch(() => {
                    this.ReverseMessage('text-red-900', 'Error de conexión')
                })
        },
        redirectToApp: function() {

            window.location.href = "app/"

        },
        RecuperateUserPassword: function() {

        },
        ClearMsg: function() {
            this.MsgResponse = '';
            this.ClassStyle = '';
            this.ResetForm();
        },
        RegisterUser: function() {

            if (this.UserFirstPassword != this.UserConfirmPassword) {

                this.ReverseMessage('text-red-900', 'Las contraseñas no coinciden')

            } else {

                let UserInformation = {
                    UserNames: this.UserNames,
                    UserLastNames: this.UserLastNames,
                    UserNewEmail: this.UserNewEmail,
                    UserFirstPassword: this.UserFirstPassword,
                    UserConfirmPassword: this.UserConfirmPassword
                }

                fetch(BASE_API + 'user_create.php', {
                        method: 'POST',
                        body: JSON.stringify(UserInformation)
                    })
                    .then(response => response.json())
                    .then((response) => {

                        this.ReverseMessage(response['ClassStyle'], response['MsgResponse'])

                        if (response['ClassStyle'] === 'text-green-900') {

                            this.ResetForm()
                        }

                    }).catch(() => {

                        this.ReverseMessage('text-red-900', 'Error de conexión')
                    })
            }
        },
        ReverseMessage: function(ClassStyle, MsgResponse) {
            this.ClassStyle = ClassStyle
            this.MsgResponse = MsgResponse
        },
        ResetForm: function() {

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