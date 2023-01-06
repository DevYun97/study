import { createApp } from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
// Import all plugins
import * as bootstrap from 'bootstrap';

// Or import only needed plugins
import { Tooltip as Tooltip, Toast as Toast, Popover as Popover } from 'bootstrap';

// Or import just one
import Alert as Alert from '../node_modules/bootstrap/js/dist/alert';

createApp(App).use(store).use(router).mount('#app')
