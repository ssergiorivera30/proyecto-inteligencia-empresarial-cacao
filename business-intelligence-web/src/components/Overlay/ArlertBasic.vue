<script>

import { Notyf } from 'notyf';
import 'notyf/notyf.min.css';

const notyf = new Notyf({
  types: [
    {
      type: 'warning',
      background: 'orange',
       icon: {
        className: '',
        tagName: 'span',
        text: '😬',
        color: 'white',
      }
    }
  ]
});

// 😬
// ✨

export default {
  name: 'ArlertBasic',
  data() {
    
  },
  mounted: function () {
        
  },
  methods: {

    AlertBasic: function(tipe, message, duration, dismissible){
      
      notyf.open({
        position: {
          x: 'right',
          y: 'top',
        },
        type: tipe,
        duration: duration,
        dismissible: dismissible,
        message: message
      });

    }
  }
}
</script>
