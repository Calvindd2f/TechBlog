import { defineConfig } from 'astro/config';
import mdx from '@astrojs/mdx';
import tailwind from '@astrojs/tailwind';
import compressor from 'astro-compressor';
import sitemap from '@astrojs/sitemap';
import robotsTxt from 'astro-robots-txt';
import { VitePWA } from 'vite-plugin-pwa';

import { manifest } from './src/utils/manifest';

import react from '@astrojs/react';
import basicSsl from '@vitejs/plugin-basic-ssl';

// https://astro.build/config
export default defineConfig({
  site: 'https://app-support.com/',
  image: {
    remotePatterns: [{ protocol: 'https' }],
  },
  markdown: {
    drafts: true,
    shikiConfig: {
      theme: 'material-theme-palenight',
      wrap: true,
    },
  },
  integrations: [
    mdx({
      syntaxHighlight: 'shiki',
      shikiConfig: {
        theme: 'material-theme-palenight',
        wrap: true,
      },
      drafts: true,
    }),
    compressor({ gzip: true, brotli: true }),
    sitemap(),
    tailwind(),
    robotsTxt(),
    react(),
  ],
  devToolbar: {
    enabled: false,
  },
  vite: {
    plugins: [
      basicSsl({
        name: 'app-support',
        domain: 'app-support.com',
        certDir:
          'C:/Users/c/calvin/__move-pending_Coding-Tech-Blog/boilerplate_tempaltes/Astro-Tech-Blog-Boilerplate-main/tech_blog/TechBlog/.internal/',
      }),
      VitePWA({
        registerType: 'autoUpdate',
        manifest,
        workbox: {
          globDirectory: 'dist',
          globPatterns: ['**/*.{js,css,svg,png,jpg,jpeg,gif,webp,woff,woff2,ttf,eot,ico}'],
          navigateFallback: null,
        },
      }),
    ],
  },
  server: {
    https: true,
    headers: {
      'x-xss-protection': 1,
      'access-control-allow-headers': 'GET',
    },
  },
  redirects: {
    '/Blog': '/blog',
    '/vendor/phpunit/src/Util/PHP/eval-stdin.ph': 'https://example.com/',
    '/phpunit/phpunit': 'https://example.com/',
    '/lib/phpunit/phpunit': 'https://example.com/',
    '/lib/vendor/phpunit/': 'https://example.com/',
    '/laravel/vendor/p': 'https://example.com/',
    '/ws/vendor/': 'https://example.com/',
    '/www/vendor/p': 'https://example.com/',
    '/api/vendor/phpunit': 'https://example.com/',
    '/admin/vendor/phpuni': 'https://example.com/',
  },
});
