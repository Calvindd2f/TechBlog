// vite.config.js
import basicSsl from '@vitejs/plugin-basic-ssl';

export default {
  plugins: [
    basicSsl({
      /** name of certification */
      name: 'app-support',
      /** custom trust domains */
      domains: ['app-support.com'],
      /** custom certification directory */
      certDir: 'C:\\Users\\c\\app-support.cer',
    }),
  ],
};
