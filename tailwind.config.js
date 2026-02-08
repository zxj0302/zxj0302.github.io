/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    './_includes/**/*.{html,liquid,md}',
    './_layouts/**/*.{html,liquid,md}',
    './_pages/**/*.{html,liquid,md}',
    './_posts/**/*.{html,liquid,md}',
    './_books/**/*.{html,liquid,md}',
    './_projects/**/*.{html,liquid,md}',
    './_teachings/**/*.{html,liquid,md}',
    './assets/js/**/*.js',
    './assets/tailwind/**/*.css',
  ],
  darkMode: ['selector', '[data-theme="dark"]'],
  theme: {
    extend: {
      colors: {
        theme: 'var(--global-theme-color)',
        text: 'var(--global-text-color)',
        background: 'var(--global-bg-color)',
        divider: 'var(--global-divider-color)',
        card: 'var(--global-card-bg-color)',
      },
    },
  },
  safelist: [
    'collapse',
    'collapsing',
    'show',
    'dropdown-menu',
    'dropdown-item',
    'dropdown-toggle',
    'table',
    'table-dark',
    'table-hover',
    'af-tooltip',
    'af-popover',
    'font-weight-lighter',
    'font-weight-bold',
    'hoverable',
    'z-depth-0',
    {
      pattern: /(col|row)-.*/,
    },
  ],
  plugins: [],
};
