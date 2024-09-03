import { defineConfig } from 'astro/config';
import mdx from '@astrojs/mdx';
import sitemap from '@astrojs/sitemap';

// https://astro.build/config
export default defineConfig({
	site: 'https://app-support.com',
	markdown: {
		gfm: true,
	},

	integrations: [
		mdx({
			optimize: true,
		}),
		sitemap()]
});
