<template>
  <main class="p-6 sm:p-10 space-y-6">
    <!-- component -->
<div class=" flex items-center justify-center">
        
        <form id="form" class="bg-white shadow-md rounded px-8 pt-6 pb-8 mb-4">
            <!-- <div><img src="img/logo-ghooa.png" width="40%"></div> -->

            <br>
            <h1 class="block text-gray-700 font-bold mb-2 text-xl text-center">CUESTIONARIO DE PREGUNTAS Y ENVÍO POR WHATSAPP</h1>
            <br>
            <div class="mb-4">
                <label class="block text-gray-700 text-sm font-bold mb-2" for="name">
                    Nombre
                </label>
                <input
                    class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                    name="name" id="name" type="text" placeholder="Ingresa tu nombre" required>
            </div>
            
            <div class="mb-4">
                <label class="block text-gray-700 text-sm font-bold mb-2" for="name">
                    Número de Celular
                </label>
                <input
                    class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                    name="tel" id="tel" type="tel" placeholder="Ingresa tu Número de Celular" required>
            </div>
            
            <div class="mb-4">
                <label class="block text-gray-700 text-sm font-bold mb-2" for="name">
                    Correo
                </label>
                <input
                    class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                    name="email" id="email" type="email" placeholder="Ingresa tu correo" required>
            </div>

            <div class="mb-4">
                <label class="block text-gray-700 text-sm font-bold mb-2" for="Date">
                    Fecha
                </label>
                <input
                    class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                    name="date" id="date" type="date" placeholder="Ingresa tu Fecha de Nacimiento" required>
            </div>

            <div class="mb-4">

                <label class="block text-gray-700 text-sm font-bold mb-2" for="name">
                    ¿Pregunta 01?
                </label>
                <textarea class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline" name="message1" id="message1" type="text" placeholder="Escríbe tu respuesta Aquí..." required></textarea>
            </div>

            <div class="mb-4">

                <label class="block text-gray-700 text-sm font-bold mb-2" for="name">
                    ¿Pregunta 02?
                </label>
                
                <textarea class="bshadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline" name="message2" id="message2" type="text" placeholder="Escríbe tu respuesta Aquí..." required></textarea>
            </div>

            
            <div class="flex items-center justify-between">
                <button id="submit"
                    class="bg-green-500 hover:bg-green-700 text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline"
                    type="submit">
                    <i class="fab fa-whatsapp"></i> Enviar a WhatsApp
                </button>
            </div>

            

 
        </form>
        
    </div>
 
    </main>
</template>

<script>

export default {
  name: 'Home',
}
</script>
