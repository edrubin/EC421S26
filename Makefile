# Options and directories ------------------------------------------------------
# Option for R
R_OPTS=--vanilla

# Name targets -----------------------------------------------------------------
syllabus: syllabus/syllabus.pdf
lec01 : notes/01-intro/slides.html notes/01-intro/slides.pdf
lec01r : notes/01-intro/slides.html notes/01-intro-r/slides.pdf
lec02 : notes/02-review/slides.html notes/02-review/slides.pdf
lec03 : notes/03-review/slides.html notes/03-review/slides.pdf
lec04 : notes/04-heteroskedasticity/slides.html notes/04-heteroskedasticity/slides.pdf
lec05 : notes/05-heteroskedasticity/slides.html notes/05-heteroskedasticity/slides.pdf
lec06 : notes/06-consistency/slides.html notes/06-consistency/slides.pdf
lec07 : notes/07-time-series/slides.html notes/07-time-series/slides.pdf
lec08 : notes/08-autocorrelation/slides.html notes/08-autocorrelation/slides.pdf
lec09 : notes/09-nonstationarity/slides.html notes/09-nonstationarity/slides.pdf
lec10 : notes/10-causality/slides.html notes/10-causality/slides.pdf
lec11 : notes/11-iv/slides.html notes/11-iv/slides.pdf
lec12 : notes/12-panels/slides.html notes/12-panels/slides.pdf
midterm-topics : midterm/prep/midterm-topics.html
midterm-review : midterm/prep/midterm-review.html
midterm-exam : midterm/exam/exam-inclass.pdf

# Define links: Syllabus -------------------------------------------------------
# Build syllabus
syllabus/syllabus.pdf : syllabus/syllabus.tex
	tectonic syllabus/syllabus.tex

# Define links: Lecture --------------------------------------------------------
# Lecture 01
notes/01-intro/slides.html : notes/01-intro/slides.qmd notes/my.scss
	quarto render '$<'
notes/01-intro/slides.pdf : notes/01-intro/slides.html
	decktape $<?fragments=true $@
# Lecture 01(r)
notes/01-intro-r/slides.html : notes/01-intro-r/slides.qmd notes/my.scss
	quarto render '$<'
notes/01-intro-r/slides.pdf : notes/01-intro-r/slides.html
	decktape $<?fragments=true $@
# Lecture 02
notes/02-review/slides.html : notes/02-review/slides.qmd notes/my.scss
	quarto render '$<'
notes/02-review/slides.pdf : notes/02-review/slides.html
	decktape $<?fragments=true $@
# Lecture 03
notes/03-review/slides.html : notes/03-review/slides.qmd notes/my.scss
	quarto render '$<'
notes/03-review/slides.pdf : notes/03-review/slides.html
	decktape $<?fragments=true $@
# Lecture 04
notes/04-heteroskedasticity/slides.html : notes/04-heteroskedasticity/slides.qmd notes/my.scss
	quarto render '$<'
notes/04-heteroskedasticity/slides.pdf : notes/04-heteroskedasticity/slides.html
	decktape $<?fragments=true $@
# Lecture 05
notes/05-heteroskedasticity/slides.html : notes/05-heteroskedasticity/slides.rmd notes/my-css.css
	Rscript -e "rmarkdown::render('$<')"
notes/05-heteroskedasticity/slides.pdf : notes/05-heteroskedasticity/slides.html
	Rscript -e "pagedown::chrome_print('$<', wait = 4, timeout = 120)"
# Lecture 06
notes/06-consistency/slides.html : notes/06-consistency/slides.rmd notes/my-css.css
	Rscript -e "rmarkdown::render('$<')"
notes/06-consistency/slides.pdf : notes/06-consistency/slides.html
	Rscript -e "pagedown::chrome_print('$<', wait = 4, timeout = 120)"
# Lecture 07
notes/07-time-series/slides.html : notes/07-time-series/slides.rmd notes/my-css.css
	Rscript -e "rmarkdown::render('$<')"
notes/07-time-series/slides.pdf : notes/07-time-series/slides.html
	Rscript -e "pagedown::chrome_print('$<', wait = 4, timeout = 120)"
# Lecture 08
notes/08-autocorrelation/slides.html : notes/08-autocorrelation/slides.rmd notes/my-css.css
	Rscript -e "rmarkdown::render('$<')"
notes/08-autocorrelation/slides.pdf : notes/08-autocorrelation/slides.html
	Rscript -e "pagedown::chrome_print('$<', wait = 4, timeout = 120)"
# Lecture 09
notes/09-nonstationarity/slides.html : notes/09-nonstationarity/slides.rmd notes/my-css.css
	Rscript -e "rmarkdown::render('$<')"
notes/09-nonstationarity/slides.pdf : notes/09-nonstationarity/slides.html
	Rscript -e "pagedown::chrome_print('$<', wait = 4, timeout = 120)"
# Lecture 10
notes/10-causality/slides.html : notes/10-causality/slides.rmd notes/my-css.css
	Rscript -e "rmarkdown::render('$<')"
notes/10-causality/slides.pdf : notes/10-causality/slides.html
	Rscript -e "pagedown::chrome_print('$<', wait = 4, timeout = 120)"
# Lecture 11
notes/11-iv/slides.html : notes/11-iv/slides.rmd notes/my-css.css
	Rscript -e "rmarkdown::render('$<')"
notes/11-iv/slides.pdf : notes/11-iv/slides.html
	Rscript -e "pagedown::chrome_print('$<', wait = 4, timeout = 120)"
# Lecture 12
notes/12-panels/slides.html : notes/12-panels/slides.rmd notes/my-css.css
	Rscript -e "rmarkdown::render('$<')"
notes/12-panels/slides.pdf : notes/12-panels/slides.html
	Rscript -e "pagedown::chrome_print('$<', wait = 4, timeout = 120)"

# Define links: Midterm material -----------------------------------------------
midterm/prep/midterm-topics.html : midterm/prep/midterm-topics.qmd
	quarto render $< --to html
midterm/prep/midterm-review.html : midterm/prep/midterm-review.qmd
	quarto render $< --to html
midterm/exam/exam-inclass.pdf : midterm/exam/exam-inclass.qmd \
															  midterm/exam/my-header.tex \
																midterm/exam/my-macros.tex
	quarto render $@ --to pdf

# Define links: Final material -------------------------------------------------
final/prep/final-topics.html : final/prep/final-topics.qmd
	quarto render $< --to html
final/prep/final-review.html : final/prep/final-review.qmd
	quarto render $< --to html
final/exam/exam-inclass.pdf : final/exam/exam-inclass.qmd \
															  final/exam/my-header.tex \
																final/exam/my-macros.tex
	quarto render $@ --to pdf

# Global targets ---------------------------------------------------------------
lec-all: lec01 lec01r lec02 lec03 lec04 lec05 lec06 lec07 lec08 lec09 lec10 lec11 lec12
midterm-all: midterm-topics midterm-review midterm-exam
final-all: final-topics final-review final-exam
all: lec-all syllabus midterm-all final-all
# Define clean
clean:
	rm -f lec-all
