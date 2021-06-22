<template>

    <div class="grid grid-cols-2">
  <apexchart width="500" type="bar" :options="options" :series="series"></apexchart>
  <apexchart width="500" type="radar" :options="options" :series="series"></apexchart>
</div>

</template>

<script>


   import axios from 'axios';
   import API_ROUTER from './../../services/SERVER_API'

   export default {
      name: 'EntityData',

      data() {
         return {

            options: {
                chart: {
                id: 'vuechart-example'
                },
                 colors: ["#323c79"],
                xaxis: {
                categories: [1991, 1992, 1993, 1994, 1995, 1996, 1997, 1998]
                }
            },
            series: [{
                name: 'series-1',
                data: [30, 40, 45, 50, 49, 60, 70, 91]
            }], 



         }
      },
      beforeMount: function () {


      },
      mounted: function () {

      },
      methods: {


      }
   }
</script>