import { MapElementFactory } from "vue2-google-maps";

export default MapElementFactory({

    data(){
    return{
       name: 'DirectionsRenderer',         
    }
  }, 

    mounted(){

    },

    methods:{

      hola: function(){        

         origin = 'chicago, il'
         destination = 'st louis, m'
         travelMode = 'DRIVING'

        let directionsService = new window.google.maps.DirectionsService();
        let directionsRenderer = new window.google.maps.DirectionsRenderer()

        directionsService.route({  
          origin: { lat: 2.3877584, lng: -75.8934048 },
          destination: { lat: 2.545506, lng: -75.8096025 },  
          travelMode: 'DRIVING' },
          (response, status) => {
            if (status !== "OK") return;
            directionsRenderer.setDirections(response);
          }
        );
      },
  }
}
</script>