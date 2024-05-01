import '@mdi/font/css/materialdesignicons.css'

import { createApp } from 'vue'
import App from './App.vue'

import './assets/main.css'

// Vuetify
import 'vuetify/styles'
import {createVuetify} from 'vuetify'
import * as components from 'vuetify/components'
import * as directives from 'vuetify'
import {aliases, mdi} from 'vuetify/iconsets/mdi'

const EthelCainDark = {
    dark: true,
    colors: {
        background: '#382413', // middle ground between attempt #1 & navigation drawer
        surface: '#000000',
    },
}

const vuetify = createVuetify({
    components,
    directives,
    icons: {
        defaultSet: 'mdi',
        aliases,
        sets: {
            mdi,
        }
    },
    theme: {
        defaultTheme: 'EthelCainDark',
        themes: {
            EthelCainDark
        },
        typography: {
            fontFamily: 'IM Fell English',
        },
    }
})

createApp(App).use(vuetify).mount('#app')
