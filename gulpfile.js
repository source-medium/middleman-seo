'use strict';

const gulp = require('gulp');
const sass = require('gulp-sass');
const sourcemaps = require('gulp-sourcemaps');
const bower = require('gulp-bower');
const autoprefixer = require('gulp-autoprefixer');

const paths = {
  stylesheetsEntryPoint: 'source/assets/stylesheets/site.sass',
  stylesheets: 'source/assets/stylesheets/**/*.sass',
  views: 'source/**/*.slim',
  bower: './bower_components',
  outputDist: 'gulp_dist/assets'
};

gulp.task('bower', () => { return bower(); });

gulp.task('sass', () => {
  return gulp.src(paths.stylesheetsEntryPoint)
    .pipe(sass({
      outputStyle: 'compressed',
      includePaths: [
        require('node-normalize-scss').includePaths,
        `${paths.bower}/bourbon/app/assets/stylesheets`,
        `${paths.bower}/foundation-sites/scss`]
    }))
    .pipe(autoprefixer())
    .pipe(sourcemaps.init())
    .pipe(sass().on('error', sass.logError))
    .pipe(sourcemaps.write())
    .pipe(gulp.dest(`${paths.outputDist}/stylesheets`));
});

gulp.task('watch', ['sass'], () => {
  gulp.watch(paths.stylesheets, ['sass']);
});

gulp.task('default', ['sass', 'bower']);
