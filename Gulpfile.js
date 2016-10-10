
/*

*/

var gulp = require('gulp');

// clean up activities
var strip = require('gulp-strip-comments');
var removeLines = require('gulp-remove-empty-lines');

// dist activities
var inline = require('gulp-inline-source');
var processhtml = require('gulp-processhtml');

//
var renamepath = require('gulp-rename');
var concat = require('gulp-concat');
var copy = require('gulp-copy');

/*

var json = require('./package.json');
json.prop

~VS~

var fs = require('fs');
var json = JSON.parse(fs.readFileSync('./package.json'));
json.prop

*/

gulp.task('buildassets', function(){
    return gulp.src('./assets/**/*.*')
            //does not require copy .pipe(copy())
            .pipe(renamepath({dirname:''}))
            .pipe(gulp.dest('dist/'))
});

gulp.task('buildjs', function(){
    return gulp.src(['build/js/utils.js', 'build/js/dynamic.js', 'build/js/video.js', 'build/js/main.js'])
            .pipe(concat('build.js'))
            .pipe(strip({line:true}))
            .pipe(removeLines())
            .pipe(gulp.dest('dist/'))
});


gulp.task('buildhtml', function(){
    return gulp.src('build/index.html')
            .pipe(strip({line:true}))
            .pipe(removeLines())
            .pipe(inline())
            .pipe(processhtml())
            .pipe(gulp.dest('dist/'))
});