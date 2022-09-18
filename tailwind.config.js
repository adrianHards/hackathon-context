module.exports = {
  content: [
    './app/views/**/*.html.erb',
    './app/helpers/**/*.rb',
    './app/assets/stylesheets/**/*.css',
    './app/javascript/**/*.js'
  ],
  theme: {
    colors: {
      'black':'#383838',
      'blue': '#38CFFF',
      'light-blue': '#E5F9FF',
      'teal': '#75FFE6',
      'light-teal': '#DEFFF9',
      'pink': '#FB3DBB',
      'light-pink':'#FF6DCE',
      'grey-font': '#ACACAC',
      'orange': '#FFB800',
      'white': '#FFF',
    },
    extend: {
      backgroundImage: {
          'hero': "url('hero.jpeg')",
          'ruby-rails': "url('rabbit-ruby.jpg')",
          'child-reading': "url('child-reading.png')",
      }

    }
  },
  screens: {
    'tablet': '640px',
    // => @media (min-width: 640px) { ... }
    'laptop': '1024px',
    // => @media (min-width: 1024px) { ... }
    'desktop': '1280px',
    // => @media (min-width: 1280px) { ... }
  }
}
