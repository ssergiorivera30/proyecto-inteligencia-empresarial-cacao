// const BASE_API = 'http://192.168.1.5/proyecto-inteligencia-empresarial-cacao/api/php7/control/';
// const BASE_ASSETS = 'http://192.168.1.5/proyecto-inteligencia-empresarial-cacao/api/ui/';

const BASE_API = 'http://localhost/proyecto-inteligencia-empresarial-cacao/api/php7/control/';
const BASE_ASSETS = 'http://localhost/proyecto-inteligencia-empresarial-cacao/api/ui-native/';

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
        UserPassword: '',

        UserNames: '',
        UserNewEmail: '',
        UserFirstPassword: '',
        UserConfirmPassword: '',

        EmailUserRecuperate: '',
    },
    mounted: function() {

    },
    methods: {

        LoginUserCount: function() {
            axios.post(BASE_API + 'user_login.php', {
                UserEmail: this.UserEmail,
                UserPassword: this.UserPassword,
            }).then((response) => {
                if (response.data['UserIsCorrect'] === true) {
                    this.NewCount = 3
                    this.redirectToApp()
                } else {
                    this.ReverseMessage(response.data['ClassStyle'], response.data['MsgResponse'])
                }
            }).catch(() => {
                this.ReverseMessage('Error de conexión', 'text-red-900')
            })
        },
        redirectToApp: function() {

            window.location.href = "app/"

        },
        RecuperateUserPassword: function() {

        },
        RegisterUser: function() {

            if (this.UserFirstPassword != this.UserConfirmPassword) {

                this.ReverseMessage('text-red-900', 'Las contraseñas no coinciden')

            } else {

                axios.post(BASE_API + 'user_create.php', {
                    UserNames: this.UserNames,
                    UserNewEmail: this.UserNewEmail,
                    UserFirstPassword: this.UserFirstPassword,
                    UserConfirmPassword: this.UserConfirmPassword
                }).then((response) => {

                    this.ReverseMessage(response.data['ClassStyle'], response.data['MsgResponse'])

                    if (response.data['ClassStyle'] === 'text-green-900') {

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