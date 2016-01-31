// Import local files
// Local files can be imported directly using relative
// paths "./socket" or full ones "web/static/js/socket".
// require "./socket"

import { Greeter } from './app/greet';
import index from './app/components/index';
let newGreeter = new Greeter();

window.Lixir = {
  'App': {
    run() {
      console.log('Hello!');
      let Groot = new Greeter();
      Groot.hello();
    },
    react() {
      index('ohhhhh shit');
    }
  }
};

window.onload = function() {
  Lixir.App.run();
  Lixir.App.react();
};
