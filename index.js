#!/usr/bin/env node

var child_process = require('child_process');

var argv = process.argv;
argv.shift();

var file_path = __dirname;
var current_path = process.cwd();

if ( argv.length > 1 ) {
  var first_arg = argv[0];
  if ( first_arg == '-h' || first_arg == '--help' ) {
 
  }
}

// execFile: executes a file with the specified arguments
child_process.exec('cat *.js bad_file | wc -l',
  function (error, stdout, stderr) {
    console.log('stdout: ' + stdout);
    console.log('stderr: ' + stderr);
    if (error !== null) {
      console.log('exec error: ' + error);
    }
});

// execFile: executes a file with the specified arguments
// child_process.execFile(file_path + '/bson.sh',null,{cwd:current_path},function (error,stdout,stderr) {
//     if (error !== null) {
//       console.log('exec error: ' + error);
//     }
// });