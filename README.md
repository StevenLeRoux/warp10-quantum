# Warp 10 Quantum

Warp 10's Quantum is a web application developed to easily deal with the [http://www.warp10.io](Warp 10)
platform.

Entirely developed as [https://www.polymer-project.org/](Polymer) elements, you will
find in this repository not only the full application but the whole set of web-components
allowing to customize your Warp 10 experience.


## Building quantum

### Get dependencies with Bower

After cloning the repository, you will need to use [Bower](http:/bower.io) to get
all the dependencies for the project (described in `bower.json` as usual).

    bower install

### Install polyserve

Because of the way HTML imports works, you’ll need a local web server to test
your elements.

Polyserve is a simple web server that lets you use local Bower components. It’s
great for testing elements during development. Install it using `npm`:

    npm install -g polyserve


### Build a deployable version

You will find on `tools` folder two building scripts:

* `build.sh`: it copies all the needed files into `dist` folder

* `vulcanize.sh`: it calls `build.sh` to build `dist`, then it uses
[https://github.com/Polymer/vulcanize](vulcanize) to reduce Quantum and all its
dependent HTML and CSS files into one file inside `vulcanized` folder.

  It also generates some other files on that folder, including `warp10-quantum-doc.html`,
  a page documenting the API's of the elements on this project.


## Contributing

The Warp 10 team loves contributions from the community! Issues and pull request are welcome.

## License

Warp 10's Quantum uses Apache 2.0 Licence, available [here](./LICENCE.txt).
