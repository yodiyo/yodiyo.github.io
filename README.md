# Demos

- [Demos](#demos)
  - [Proprietary examples with descriptions:](#proprietary-examples-with-descriptions)
    - [Bulk Order plugin](#bulk-order-plugin)
    - [Qala VAT Switcher](#qala-vat-switcher)
    - [Qala Product Price History](#qala-product-price-history)
    - [Qala Enhanced WooCommerce Downloads](#qala-enhanced-woocommerce-downloads)
  - [Examples available on Github:](#examples-available-on-github)
    - [React News Application](#react-news-application)
    - [WordPress Custom Blocks and Plugins](#wordpress-custom-blocks-and-plugins)
      - [Disable Blocks](#disable-blocks)
      - [TrustPilot Reviews block](#trustpilot-reviews-block)
      - [Data-crunching](#data-crunching)
      - [Various customisations for WooCommerce product pages](#various-customisations-for-woocommerce-product-pages)
  - [Further code samples](#further-code-samples)
  - [Portfolio Site](#portfolio-site)


I would have liked to provide further code examples to demonstrate my experience. I have done extensive work on custom plugins, themes, and blocks, including WooCommerce and eCommerce flow. Unfortunately, some work is proprietary and I do not have permission to share it.

## Proprietary examples with descriptions:

### Bulk Order plugin
* OO PHP, WooCommerce API.
* A B2B plugin for bulk importing products with a CSV/XSL file through the front-end.
* Getting product data and passing items to cart/checkout for processing.
* Working with WooCommerce hooks for notices to indicate if there were issue with the orders, eg product not in stock.
* Automatically check for cart to checkout stock errors and automatically adjust product quantities if stock levels are lower or out of stock.


### Qala VAT Switcher
* OO PHP, vanilla JS with classes.
* Our client had a unique requirement - they wanted a toggle button on their product pages that would allow customers to switch between seeing prices including VAT (Value Added Tax) and excluding VAT. This would provide customers with more transparency and flexibility when making purchasing decisions.
* I created a plugin and used a PHP method to leverage WooCommerce hooks to add data attributes with relevant prices to the price component, then used JavaScript to capture this data and display the price according to the switch button toggle event.
* To address this, the code was carefully refactored so that the switch methods could be reused across different components. This approach ensured that the code was not only efficient but also maintainable. The successful implementation of these methods extended the price switching functionality to the cart, minicart, and checkout components, providing a consistent experience throughout the customer's journey.


### Qala Product Price History
* OO PHP, jQuery, JavaScript, ChartJS, SASS.
* This plugin in the [WooCommerce store](https://woocommerce.com/document/qala-product-price-history-for-woocommerce/) helps vendors meet EU requirements to include transparency about product pricing for consumers.
* It records and displays price changes and includes a graph of prices over the last 30 days.
* I worked on this plugin to progress it from MVP and to extend it to cover all product types and fix any issues.


### Qala Enhanced WooCommerce Downloads
* OO PHP, vanilla JS, Handlebars, ElasticSearch, SASS, WP-API.
* The client required a library of downloadable products which could be viewed, shared or downloaded on the product page as well as on the archive and catalogue pages.
* Adding fields and options to products for downloadable files and methods to add components to view, share or download the files on the product page.
* Integrated these components with catalogue and search pages using ElasticFilters.
* Client site can be seen here:
    * [Documentation library with file links](https://www.sentricsafetygroup.com/datasheets-and-documentation/?brand=Castell)
    * [Product page with file links](https://www.sentricsafetygroup.com/product/ksd/)


## Examples available on Github:

### React News Application
I have built a React news application to demonstrate the following capabilities:
* Building components in React using the following hooks - useState, useEffect and useRef.
* Fetching an external API (NB The free version is limited to 100 calls. Generating local files as a fallback would be a next step).
* HTML follows semantic markup to provide information for accessibility and screen readers.
* Accessibility checked with Axe Devtools - no issues reported.
* Custom CSS and UI with no framework (just importing a simple reset file) - BEM class naming, files split into basic components and architecture and typography and variables - and a mobile first approach. Employing both Flexbox and CSS Grid for layouts in the page.
* To output a friendly localised date for articles, I have used the JavaScript native namespace object Intl.

Further details can be found in the Readme of the repo - [https://github.com/yodiyo/react-news-app](https://github.com/yodiyo/react-news-app) - and the application can be viewed on Netlify - [https://chipper-melba-9f5487.netlify.app/](https://chipper-melba-9f5487.netlify.app/)


### WordPress Custom Blocks and Plugins
I have created code repos to demonstrate a few custom blocks and plugins that I have developed for clients.

The plugins and blocks can be viewed on a demo WP site with links below.

The admin can be accessed with the following credentials:

```python
u:  demouser
pw: Reachforthestars!
```


#### Disable Blocks
* PHP, vanilla JS.
* A plugin to remove unwanted default Gutenberg blocks that come with core WP, themes and plugins.
* Custom plugin development - OO PHP, JS, block hooks.
* Repo - [https://github.com/yodiyo/yb-disable-blocks](https://github.com/yodiyo/yb-disable-blocks)
* Demo - [https://theyoricktouch.com/wpdemos/wp-admin/site-health.php?tab=debug](https://theyoricktouch.com/wpdemos/wp-admin/site-health.php?tab=debug) - list of removed blocks are displayed in the “Info > YB Disable Blocks” tab
* I have included some core WP blocks in the disallowed list, eg Latest Posts, Embed blocks, and also some blocks from the Yoast blocks - these blocks are now unavailable on posts and pages.


#### TrustPilot Reviews block
* ReactJS, PHP, WP-API.
* A block to enable integration with a TrustPilot business account and display of widgets.
* Custom block development, Gutenberg block editor, React components
* Repo - [https://github.com/yodiyo/yb-trustpilot-reviews](https://github.com/yodiyo/yb-trustpilot-reviews)
* Demo - [https://theyoricktouch.com/wpdemos/wp-admin/post.php?post=11&action=edit](https://theyoricktouch.com/wpdemos/wp-admin/post.php?post=11&action=edit)
* For this to work properly and display a widget, we need to have a paid TrustPilot account. In place of this, I've added placeholders to show the outputs when adding data to the ID fields.


#### Data-crunching
* PHP, WP-API, Google Script.
* The client needed a way to see all the existing posts created using multiple custom post types across multiple sites.
* By creating an API endpoint for each custom post type, I was able to capture the relevant data and output this into an online spreadsheet.
* Code - [https://github.com/yodiyo/code-demos-2022/tree/master/data-crunching](https://github.com/yodiyo/code-demos-2022/tree/master/data-crunching)


#### Various customisations for WooCommerce product pages
* PHP and WooCommerce hooks
* [https://github.com/yodiyo/code-demos-2022/blob/master/woocommerce-customisations/functions.php](https://github.com/yodiyo/code-demos-2022/blob/master/woocommerce-customisations/functions.php)


## Further code samples
* [https://github.com/yodiyo/code-demos-2024](https://github.com/yodiyo/code-demos-2024)
* Cevoid integration demonstrating classes, settings (with ACF), passing data to template and using conditional logic based on arguments.
* Custom child theme - using SASS and theme framework alongside theme.json to implement site design.

Note - some of the code repos are private and you will need to request access to view.


## Portfolio Site
* AngularJS, CSS, API integrations.
* I created [https://theyoricktouch.com](https://theyoricktouch.com/) over 10 years ago. It's a Single Page Application built using AngularJS. I have every intention to rebuild it using more modern libraries and improvements for accessibility and optimisation. However, it does currently show a good regard for original design, as well as API integrations with a timeline library, Google Maps, and WordPress which provides content for the news section.
