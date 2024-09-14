// vite.config.js
import basicSsl from '@vitejs/plugin-basic-ssl';

export default {
  plugins: [
    basicSsl({
      /** name of certification */
      name: 'app-support',
      /** custom trust domains */
      domains: ['app-support.com', 'www.app-support.com'],
      /** custom certification directory */
      certDir:
        'C:/Users/c/calvin__move-pending_Coding-Tech-Blog/boilerplate_tempaltes/Astro-Tech-Blog-Boilerplate-main/tech_blog/TechBlog/.internal',
    }),
  ],
};
