if (typeof kotlin === 'undefined') {
  throw new Error("Error loading module 'ktjs'. Its dependency 'kotlin' was not found. Please, check whether 'kotlin' is loaded prior to 'ktjs'.");
}
var ktjs = function (_, Kotlin) {
  'use strict';
  var println = Kotlin.kotlin.io.println_s8jyv4$;
  function main(arg) {
    println('hello kt js');
  }
  _.main_kand9s$ = main;
  main([]);
  Kotlin.defineModule('ktjs', _);
  return _;
}(typeof ktjs === 'undefined' ? {} : ktjs, kotlin);
