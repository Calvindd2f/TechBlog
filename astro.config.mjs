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
  site: 'http://localhost:4321/',
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
    enabled: true,
  },
  vite: {
    plugins: [
      basicSsl({
        name: 'app-support',
        domain: 'app-support.com',
        certDir: 'C:/Users/c/AppData/Local/Posh-ACME/LE_PROD/1928734016/app-support.com/',
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
  },
  redirects: {
    '/Blog': '/blog',
  },
});