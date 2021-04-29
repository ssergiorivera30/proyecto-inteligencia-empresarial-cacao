<template>
    <section class="px-3 pt-5 md:max-w-full lg:max-w-screen-xl sm:px-3 md:px-3 lg:px-8 mb-24">
        <h1 class="text-lg font-bold leading-6 text-gray-500 dark:text-gray-100 text-center my-5">Servicio Nacional de
            Aprendizaje - SENA</h1>
        <p class=" mb-10 text-base font-medium text-center text-gray-500">
            Centro de Desarrollo Agroempresarial y Turístico del Huila - Grupo de Investigación NOVA.
            <a href="http://grupodeinvestigacionnova.com/" target="new"
                class="inline-flex items-center justify-center text-blue-900 hover:text-blue-900">
                Ver más sobre nosotros
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor"
                    class="inline w-3 h-3 ml-1">
                    <path fill-rule="evenodd"
                        d="M10.293 3.293a1 1 0 011.414 0l6 6a1 1 0 010 1.414l-6 6a1 1 0 01-1.414-1.414L14.586 11H3a1 1 0 110-2h11.586l-4.293-4.293a1 1 0 010-1.414z"
                        clip-rule="evenodd" />
                </svg>
            </a>
        </p>
        <div class="grid grid-cols-2 gap-10 text-center lg:grid-cols-4 ">
            <div class="flex items-center justify-center">
                <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/8/83/Sena_Colombia_logo.svg/100px-Sena_Colombia_logo.svg.png"
                    alt="Todoist Logo" class="block object-contain h-12" />
            </div>
            <div class="flex items-center justify-center">
                <img src="https://sennovasenacartago.files.wordpress.com/2016/12/logo_sennova.png?w=600"
                    alt="Slack Logo" class="block object-contain h-12" />
            </div>
            <div class="flex items-center justify-center">
                <img src="http://grupodeinvestigacionnova.com/assets/images/logo-t.png" alt="Typeform Logo"
                    class="block object-contain h-12" />
            </div>
            <div class="flex items-center justify-center">
                <img src="/img/logo.362066b6.png" alt="Algolia Logo" class="block object-contain h-12" />
            </div>
        </div>
    </section>
</template>
<script>

    export default {

        data() {
            return {
                name: "FooterApp",
            };
        },
        mounted: function () { },
        methods: {},
    };
</script>