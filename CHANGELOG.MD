# Change Log

 > Created after a migration.

## 04.09.2024

+ Pretty much changed everything because I couldn't implement dark mode how I wanted it.
+ A lot of cool functionality and use in the site, it's faster.  
  

> #TODO(@Calvindd2f): Fix the blog display page. `/blog` and `/Blogs` are equally fucked. It still displays in '90s HTML though and is a presentable eyesore.  
> #TODO(@Calvindd2f): Redirect `404s` to `418` for shits and giggles.  
> #TODO(@Calvindd2f): Double check all `.env` and then secret scan `CI/CD`.  
> #TODO(@Calvindd2f): Not urgent but implement tags and catagories properly.  
> #TODO(@Calvindd2f): Disable toolbox before prod.  

------------------------------------------------------------

…/Blog` vs `/blog` fixed with a redirect to working.

Removed all legacy astro components `BaseHead`,`premigration_BlogPost`,`blog/index.astro`,added tags/cats to the menu.json

Updated /cv and /certs to use Blog+Post vs old Layout compoonent

Updated the rss.xml.js to use the json config file instead of the constants from Blog.ts

extended the tsconfig.json to use tsconfigs/strict

Added some new posts, added tags and categories to a good few posts similar to the below.
tags: ['Unifi']
categories: ['Terraform']

Removed premigration commented out code from the Globals.css.

MAJOR: Fixxed the /blogs/ display bug where it was in '90s mode / dog shit. Now working as usual. The issue was with pagination / homepagination not working causing nearly all of the css to fail only leaving raw html.
