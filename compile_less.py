import os
import subprocess
import argparse


class LessCompiler:

    lessc = "/home/theurich/.software/node-v6.10.2-linux-x64/bin/node_modules/less/bin/lessc"
    min_css = None
    dirs = None
    is_dry_run = None

    def __init__(self):
        self.is_dry_run = True
        self.dirs = os.listdir()
        self.min_css = ".min.css"
        self.file_ending = self.min_css
        self.minify = False


    def compile_less(self):
        for file in self.dirs:
            if (file.endswith(".less")):
                split_list = file.split(".")
                filename = split_list[0]
                css_filename = filename + self.file_ending
                print("Compiling {0} to {1}".format(file, css_filename))

                if not self.is_dry_run:
                    self.run(file, css_filename)

    def run(self, file, css_filename):
        if self.minify == True:
            subprocess.run([LessCompiler.lessc, "--clean-css", file, css_filename])
        else:
            subprocess.run([LessCompiler.lessc, file, css_filename])

    def get_arguments(self):

        parser = argparse.ArgumentParser(description="Compile .less files to .min.css. Dry Run is enabled by default")
        parser.add_argument('--no_dry_run', action="store_false", help='Disables Dry Run')
        parser.add_argument('--file_ending', type=str, help='Specifies the file ending')
        parser.add_argument('--minify', action="store_true", help='Minifies the generated .css file')
        args = parser.parse_args()

        self.is_dry_run = args.no_dry_run

        self.minify = args.minify

        if args.file_ending:
            self.file_ending = args.file_ending

        if args.no_dry_run:
            print("Dry Run is Activated")

    def start(self):
        self.get_arguments()
        self.compile_less()


compiler = LessCompiler()
compiler.start()
