/* global module */
module.exports = function(grunt) {
	"use strict";
	grunt.initConfig({
		pkg: grunt.file.readJSON("apexplugin.json"),
		banner: '/**\n' +
			' * <%= pkg.name %> - v<%= pkg.version %> - <%= grunt.template.today("yyyy-mm-dd") %>\n' +
			'<%= pkg.homepage ? " * " + pkg.homepage + "\\n" : "" %>' +
			' * Copyright (c) 2015-<%= grunt.template.today("yyyy") %> <%= pkg.author.name %> - <%= pkg.license %> license\n' +
			' * For shipped libraries see also https://github.com/ogobrecht/markdown-apex-plugin/LICENSE.txt\n' +
			' */\n',
		jshint: {
			files: [
				"apexplugin.json",
				"Gruntfile.js",
				"sources/markdown.apex-plugin-logic.js"
			],
			options: {
				jshintrc: true
			}
		},
		clean: {
			files: [
				"server/*"
			]
		},
		copy: {
			js: {
				src: "libraries/highlight.js/highlight.pack.common.9.9.0.js",
				dest: "server/highlight.pack.common.9.9.0.js",
			},
			css: {
				src: "sources/markdown.css",
				dest: "server/markdown-<%= pkg.version %>.css"
			},
			plsql: {
				src: "sources/plugin-source.sql",
				dest: "server/plugin-source-<%= pkg.version %>.sql",
				options: {
					process: function(src, filepath) {
						return src.replace(
							/x\.x\.x/g,
							grunt.template.process("<%= pkg.version %>")
							);
					}
				}
			},
			license: {
				src: "LICENSE.txt",
				dest: "server/LICENSE.txt"
			}
		},
		concat: {
			options: {
				banner: "<%= banner %>",
				stripBanners: false,
				process: function(src, filepath) {
					return "\n" +
						"//--------------------------------------------------------------------------------------------------\n" +
						"// Source: " + filepath + "\n\n" +
						src.replace(
							/x\.x\.x/g,
							grunt.template.process("<%= pkg.version %>")
						);
				},
			},
			dist: {
				src: [
					"libraries/stackoverflow-pagedown/Markdown.Converter.js",
					"libraries/stackoverflow-pagedown/Markdown.Sanitizer.js",
					"sources/markdown.editor-for-apex.js",
					"libraries/pagedown-extra-plugins/Markdown.Extra.js",
					"sources/markdown.apex-plugin-logic.js"
				],
				dest: "server/markdown-<%= pkg.version %>.js"
			},
		},
		uglify: {
			options: {
				banner: "<%= banner %>"
			},
			dist: {
				src: "<%= concat.dist.dest %>",
				dest: "server/markdown-<%= pkg.version %>.min.js"
			},
		},
		watch: {
			files: [
				"Gruntfile.js",
				"apexplugin.json",
				"sources/*",
				"LICENSE.txt"
			],
			tasks: ["jshint","clean","copy","concat","uglify"]
		}
	});
	grunt.loadNpmTasks("grunt-contrib-jshint");
	grunt.loadNpmTasks("grunt-contrib-clean");
	grunt.loadNpmTasks("grunt-contrib-copy");
	grunt.loadNpmTasks("grunt-contrib-concat");
	grunt.loadNpmTasks("grunt-contrib-uglify");
	grunt.loadNpmTasks("grunt-contrib-watch");
	grunt.loadNpmTasks("grunt-notify");
	grunt.registerTask("default", ["jshint","clean","copy","concat","uglify"]);
};
