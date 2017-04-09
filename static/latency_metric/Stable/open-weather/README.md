# &lt;open-weather&gt;

> A [Polymer](http://www.polymer-project.org/) element for getting and displaying the current weather at a given location.
> Uses [openweathermap](http://openweathermap.org/API) and [Weather Icons](https://github.com/erikflowers/weather-icons/).

## Demo

[Check it live!](https://mortega5.github.io/open-weather)

## Install

Install the component using [Bower](http://bower.io/):


## Usage

1. Import Web Components' polyfill:

    ```html
    <script src="bower_components/platform/platform.js"></script>
    ```

2. Import Custom Element:

    ```html
    <link rel="import" href="bower_components/open-weather/dist/open-weather.html">
    ```

3. Start using it!

    ```html
    <open-weather lat="37.3860500" lon="-122.0838500" units="imperial" app-id="your-open-weather-map-app-id"></open-weather>
    <open-weather lat="49.27826" lon="11.45929" units="metric" app-id="your-open-weather-map-app-id"></open-weather>
    ```

## Options

Attribute       | Options     | Default      | Description
---             | ---         | ---          | ---
`lat`           | *double*    | ``           | The latitude of the desired location
`long`          | *double*    | ``           | The longitude of the desired location
`app-id`        | *string*    | ``           | Open weather map app id
`imperial`      | *boolean*   | `false`      | use imperial instead of metric units
`language`      | *string*    | `en`         | specify the language for the conditiontext e.g. "de", possible values: en, ru, it, sp, ua, de, pt, ro, pl, fi, nl, fr, bg, se, zh_tw, zh_cn, tr

Note:

If `lat` and `lon` are not provided, it will use the geolocation of your browser.

## Events

Event                    | Description
---                      | ---
`open-weather-loaded` | Triggers when weather data is loaded

## Development

In order to run it locally you'll need to fetch some dependencies and a basic server setup.

* Install [Bower](http://bower.io/) & [Grunt](http://gruntjs.com/):

    ```sh
    $ [sudo] npm install -g bower grunt-cli
    ```

* Install local dependencies:

    ```sh
    $ bower install && npm install
    ```

* To test your project, start the development server and open `http://localhost:8000`.

    ```sh
    $ grunt server
    ```

* To build the distribution files before releasing a new version.

    ```sh
    $ grunt build
    ```

## Contributing

1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -m 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request :D

## License

[MIT License](http://opensource.org/licenses/MIT)
