# frozen_string_literal: true

# Pin npm packages by running ./bin/importmap

pin 'el-transition', to: 'https://ga.jspm.io/npm:el-transition@0.0.7/index.js', preload: true
pin 'application', preload: true
pin '@hotwired/turbo-rails', to: 'turbo.min.js', preload: true
pin '@hotwired/stimulus', to: 'https://ga.jspm.io/npm:@hotwired/stimulus@3.0.1/dist/stimulus.js'
pin '@hotwired/stimulus-loading', to: 'stimulus-loading.js', preload: true
pin_all_from 'app/javascript/controllers', under: 'controllers'
pin 'tailwindcss-stimulus-components', to: 'https://ga.jspm.io/npm:tailwindcss-stimulus-components@3.0.4/dist/tailwindcss-stimulus-components.modern.js'
