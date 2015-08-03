# mh

start mongo here 

[![NPM version][npm-image]][npm-url]
[![Build Status][ci-image]][ci-url]
[![Dependencies Status][dept-image]][dept-url]
[![Coverage Status][cov-image]][cov-url]

## Install 

```
[sudo] npm install -g mh
```

## Usage 

### 当前目录启动mongodb

在新建目录执行

```
mh
```

它会创建tmp目录

### 全局启动mongodb


```
mhg
```

它会创建~/mongo/目录，当前用户下起mongo服务，即用户下全局共享

### 测试

执行测试代码，自动检测文件变动

```
gulp = npm test
```

### 测试覆盖率
coverall.io代码测试覆盖率

```
npm run cov
```

注意此时需要替换repo_token 在`.coveralls.yml`和`.travis.yml`文件里。


[npm-image]: https://img.shields.io/npm/v/mongoosedao.svg?style=flat-square
[npm-url]: https://npmjs.org/package/mongoosedao

[ci-image]: https://travis-ci.org/moajs/mongoosedao.png?branch=master
[ci-url]: https://travis-ci.org/moajs/mongoosedao

[dept-image]: https://david-dm.org/moajs/mongoosedao.png
[dept-url]: hhttps://david-dm.org/moajs/mongoosedao

[cov-image]: https://coveralls.io/repos/moajs/mongoosedao/badge.png
[cov-url]: https://coveralls.io/r/moajs/mongoosedao