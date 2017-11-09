# rollup-lib
基于rollup实现创建js库

## 开始

克隆本项目并且安装依赖

```bash
git clone git@github.com:cklwblove/rollup-lib.git
cd rollup-lib
npm install or yarn
```

`npm run build` builds the library to `dist`, generating three files:

* `dist/rollup-lib.common.js`
    A CommonJS bundle, suitable for use in Node.js, that `require`s the external dependency. This corresponds to the `"main"` field in package.json
* `dist/rollup-lib.esm.js`
    an ES module bundle, suitable for use in other people's libraries and applications, that `import`s the external dependency. This corresponds to the `"module"` field in package.json
* `dist/rollup-lib.js or rollup-lib.min.js`
    a UMD build, suitable for use in any environment (including the browser, as a `<script>` tag), that includes the external dependency. This corresponds to the `"browser"` field in package.json

`npm run dev` builds the library(`dist/rollup-lib.js`), then keeps rebuilding it whenever the source files change using [rollup-watch](https://github.com/rollup/rollup-watch).

## License

[MIT](LICENSE).


