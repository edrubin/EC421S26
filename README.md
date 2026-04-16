# EC 421, Spring 2026

Welcome to **Economics 421: Introduction to Econometrics** (Spring 2026) at the University of Oregon (taught by [Edward Rubin](https://edrub.in) and [Connor Mulholland](https://cas.uoregon.edu/directory/social-sciences/all/cmulhol2)).


## Syllabus

For information on the course specifics, please see the [syllabus](https://raw.githack.com/edrubin/EC421S26/master/syllabus/syllabus.pdf).


## Office hours

__Edward Rubin:__ Thursdays: 2:00p–3:30p ([PLC 530](https://map.uoregon.edu/b83e556a1))

__Connor Mulholland:__ 3:30p–4:30p (_See [Canvas](https://canvas.uoregon.edu/):_ Zoom or [PLC 506](https://map.uoregon.edu/0669fd239))


## Assignments

Below are the tentatively planned topics for the problem sets.

**Problem Set 0: Review**
<br>Due: TBD
<br>Files: [assignment](https://github.com/edrubin/EC421S26/blob/master/problem-sets/000/assignment.html) | [data](https://github.com/edrubin/EC421S26/blob/master/problem-sets/000/data.csv) | solutions

**Problem Set 1: Heteroskedasticity, clustering, and OLS assumptions**
<br>Due: TBD
<br>Files: assignment | data | solutions

**Problem Set 2: Time series data, analyses, and nonstationarity**
<br>Due: TBD
<br>Files: assignment | data | solutions

**Problem Set 3: Causality, instrumental variables, and 2SLS**
<br>Due: TBD
<br>Files: assignment | data | solutions

**Problem Set 4: Panel data, DiD, and course review**
<br>Due: TBD
<br>Files: assignment | data | solutions


## Lecture slides

The slides below (linked by their topic) are .html files that will only work properly if you are connected to the internet. If you're going off grid, grab the PDFs (you'll miss out on gifs and interactive plots, but the equations will render correctly).

**Note:** Links to topics that we have not yet covered lead to older slides. I will update links to the new slides as we work our way through the term/slides.

In case you're interested, I originally created the slides with [`xaringan`](https://github.com/yihui/xaringan/wiki) in [R](https://cran.r-project.org). If you are thinking of making your own slides/documents, I would suggest [Quarto](https://quarto.org/). I'm in the process of migrating to Quarto now.

1. [Introduction to "Introduction to Econometrics"](https://raw.githack.com/edrubin/EC421S26/master/notes/01-intro/slides.html) <br> [PDF](https://raw.githack.com/edrubin/EC421S26/master/notes/01-intro/slides.pdf) | [.qmd](https://github.com/edrubin/EC421S26/blob/master/notes/01-intro/slides.qmd)
<br><br>[R Introduction and (R)eview](https://raw.githack.com/edrubin/EC421S26/master/notes/01-intro-r/slides.html) <br> [PDF](https://raw.githack.com/edrubin/EC421S26/master/notes/01-intro-r/slides.pdf) | [.qmd](https://github.com/edrubin/EC421S26/blob/master/notes/01-intro-r/slides.qmd)

2. [Review of key math/stat/metrics topics](https://raw.githack.com/edrubin/EC421S26/master/notes/02-review/slides.html)<br>Density functions, deriving the OLS estimators, properties of estimators, statistical inference (standard errors, confidence intervals, hypothesis testing), simulation <br> [PDF](https://raw.githack.com/edrubin/EC421S26/master/notes/02-review/slides.pdf) | [.qmd](https://github.com/edrubin/EC421S26/blob/master/notes/02-review/slides.qmd)

3. [Review of key topics from EC320](https://raw.githack.com/edrubin/EC421S26/master/notes/03-review/slides.html)<br>(the first course in our intro-to-metrics sequence) <br> [PDF](https://raw.githack.com/edrubin/EC421S26/master/notes/03-review/slides.pdf) | [.qmd](https://github.com/edrubin/EC421S26/blob/master/notes/03-review/slides.qmd)

4. [Heteroskedasticity: Tests and implications](https://raw.githack.com/edrubin/EC421W26/master/notes/04-heteroskedasticity/slides.html) <br> [PDF](https://raw.githack.com/edrubin/EC421W26/master/notes/04-heteroskedasticity/slides.pdf) | [.qmd](https://github.com/edrubin/EC421W26/blob/master/notes/04-heteroskedasticity/slides.qmd)

5. [Heteroskedasticity: Living with it](https://raw.githack.com/edrubin/EC421W26/master/notes/05-heteroskedasticity/slides.html) <br> [PDF](https://raw.githack.com/edrubin/EC421W26/master/notes/05-heteroskedasticity/slides.pdf) | [.Rmd](https://github.com/edrubin/EC421W26/blob/master/notes/05-heteroskedasticity/slides.rmd)

6. [Consistency and OLS in asymptopia](https://raw.githack.com/edrubin/EC421W26/master/notes/06-consistency/slides.html) <br> [PDF](https://raw.githack.com/edrubin/EC421W26/master/notes/06-consistency/slides.pdf) | [.Rmd](https://github.com/edrubin/EC421W26/blob/master/notes/06-consistency/slides.rmd)

7. [Introduction to time series](https://raw.githack.com/edrubin/EC421W26/master/notes/07-time-series/slides.html) <br> [PDF](https://raw.githack.com/edrubin/EC421W26/master/notes/07-time-series/slides.pdf) | [.Rmd](https://github.com/edrubin/EC421W26/blob/master/notes/07-time-series/slides.rmd)

8. [Autocorrelated disturbances](https://raw.githack.com/edrubin/EC421W26/master/notes/08-autocorrelation/slides.html)<br>Implications, testing, and estimation. Also: introduction `ggplot2` and user-defined functions. <br> [PDF](https://raw.githack.com/edrubin/EC421W26/master/notes/08-autocorrelation/slides.pdf) | [.Rmd](https://github.com/edrubin/EC421W26/blob/master/notes/08-autocorrelation/slides.Rmd)

9. [Nonstationarity](https://raw.githack.com/edrubin/EC421W26/master/notes/09-nonstationarity/slides.html)<br>Introduction, implications for OLS, testing, and estimation. Also: in-class exercise for model selection. <br> [PDF](https://raw.githack.com/edrubin/EC421W26/master/notes/09-nonstationarity/slides.pdf) | [.Rmd](https://github.com/edrubin/EC421W26/blob/master/notes/09-nonstationarity/slides.Rmd)

10. [Causality](https://raw.githack.com/edrubin/EC421W26/master/notes/10-causality/slides.html)<br>Introduction to causality and the Neyman-Rubin causal model. Also: Recap of in-class model-selection exercise. <br> [PDF](https://raw.githack.com/edrubin/EC421W26/master/notes/10-causality/slides.pdf) | [.Rmd](https://github.com/edrubin/EC421W26/blob/master/notes/10-causality/slides.Rmd)

11. [Instrumental Variables](https://raw.githack.com/edrubin/EC421W26/master/notes/11-iv/slides.html)<br>Review the Neyman-Rubin causal model; introduction to instrumental variables (IV) and two-stage least squares (2SLS). Applications to causal inference and measurement error. Venn diagrams. <br> [PDF](https://raw.githack.com/edrubin/EC421W26/master/notes/11-iv/slides.pdf) | [.Rmd](https://github.com/edrubin/EC421W26/blob/master/notes/11-iv/slides.Rmd)

12. [Panel data, fixed effects, and DiD](https://raw.githack.com/edrubin/EC421W26/master/notes/12-panels/slides.html)<br>Introduction to panel data, fixed effects, *within* variation, and difference-in-differences estimation. <br> [PDF](https://raw.githack.com/edrubin/EC421W26/master/notes/12-panels/slides.pdf) | [.Rmd](https://github.com/edrubin/EC421W26/blob/master/notes/12-panels/slides.Rmd)


## Exams

See the [syllabus](https://raw.githack.com/edrubin/EC421S26/master/syllabus/syllabus.pdf) for specific information on the exams and grades.

Here are some exams from previous years:

| Term | Midterm | Final |
|:----:|:-------:|:-----:|
| Winter 2019 | [exam](https://raw.githack.com/edrubin/EC421S25/master/midterm/past/midterm-2019w.pdf) [key](https://raw.githack.com/edrubin/EC421S25/master/midterm/past/midterm-2019w-key.pdf) | [exam](https://raw.githack.com/edrubin/EC421S25/master/final/past/final-2019w.pdf) [key](https://raw.githack.com/edrubin/EC421S25/master/final/past/final-2019w-key.pdf) |
| Spring 2019 | [exam](https://raw.githack.com/edrubin/EC421S25/master/midterm/past/midterm-2019s.pdf) [key](https://raw.githack.com/edrubin/EC421S25/master/midterm/past/midterm-2019s-key.pdf) | [exam](https://raw.githack.com/edrubin/EC421S25/master/final/past/final-2019s.pdf) [key](https://raw.githack.com/edrubin/EC421S25/master/final/past/final-2019s-key.pdf) |
| Winter 2020 | [exam](https://raw.githack.com/edrubin/EC421S25/master/midterm/past/midterm-2020w.pdf) [key](https://raw.githack.com/edrubin/EC421S25/master/midterm/past/midterm-2020w-key.pdf) | [exam](https://raw.githack.com/edrubin/EC421S25/master/final/past/final-2020w.pdf) [key](https://raw.githack.com/edrubin/EC421S25/master/final/past/final-2020w-key.pdf) |
| Winter 2021 | [exam](https://raw.githack.com/edrubin/EC421S25/master/midterm/past/midterm-2021w.pdf) | |
| Spring 2020 | [exam](https://raw.githack.com/edrubin/EC421S25/master/midterm/past/midterm-2020s.pdf) | |
| Winter 2022 | | [home exam](https://raw.githack.com/edrubin/EC421S25/master/final/past/final-2022w-home.pdf) [home key](https://raw.githack.com/edrubin/EC421S25/master/final/past/final-2022w-home-key.html) |
| Spring 2022 | [exam](https://raw.githack.com/edrubin/EC421S25/master/midterm/past/midterm-2022s.pdf) [key](https://raw.githack.com/edrubin/EC421S25/master/midterm/past/midterm-2022s-key.pdf) | |
| Winter 2023 | [home key](https://raw.githack.com/edrubin/EC421S25/master/midterm/past/midterm-2023w-home-key.html) [in-class exam](https://raw.githack.com/edrubin/EC421S25/master/midterm/past/midterm-2023w-inclass.pdf) [in-class key](https://raw.githack.com/edrubin/EC421S25/master/midterm/past/midterm-2023w-inclass-key.pdf) | [home exam](https://raw.githack.com/edrubin/EC421S25/master/final/past/final-2023w-home.html) [home key](https://raw.githack.com/edrubin/EC421S25/master/final/past/final-2023w-home-key.html) [in-class exam](https://raw.githack.com/edrubin/EC421S25/master/final/past/final-2023w-inclass.pdf) [in-class key](https://raw.githack.com/edrubin/EC421S25/master/final/past/final-2023w-inclass-key.pdf) |
| Spring 2023 | [home exam](https://raw.githack.com/edrubin/EC421S25/master/midterm/past/midterm-2023s-home.html) [in-class exam](https://raw.githack.com/edrubin/EC421S25/master/midterm/past/midterm-2023s-inclass.pdf) | [home exam](https://raw.githack.com/edrubin/EC421S25/master/final/past/final-2023s.html) [in-class exam](https://raw.githack.com/edrubin/EC421S25/master/final/past/final-2023s-inclass.pdf) |
| Winter 2025 | [exam](https://raw.githack.com/edrubin/EC421S25/master/midterm/past/midterm-2025w.pdf) [key](https://raw.githack.com/edrubin/EC421S25/master/midterm/past/midterm-2025w-key.pdf) | [exam](https://raw.githack.com/edrubin/EC421S25/master/final/past/final-2025w.pdf) [key](https://raw.githack.com/edrubin/EC421S25/master/final/past/final-2025w-key.pdf) |
| Spring 2025 | [exam](https://raw.githack.com/edrubin/EC421W26/master/midterm/past/midterm-2025s.pdf) | [exam](https://raw.githack.com/edrubin/EC421W26/master/final/past/final-2025s.pdf) |
| Winter 2026 | [exam](https://raw.githack.com/edrubin/EC421W26/master/midterm/past/midterm-2026w.pdf) [key](https://raw.githack.com/edrubin/EC421W26/master/midterm/past/midterm-2026w-key.pdf) | [exam](https://raw.githack.com/edrubin/EC421W26/master/final/past/final-2026w.pdf) [key](https://raw.githack.com/edrubin/EC421W26/master/final/past/final-2026w-key.pdf) |

**Note:** If there is no key posted, then I do not have it and will not distribute it.


## Midterm exam

Materials to prepare for the in-class midterm exam:

- [notes from in-class review](https://github.com/edrubin/EC421S26/blob/master/midterm/prep/inclass-review.pdf);
- [past exams](https://github.com/edrubin/EC421S26?tab=readme-ov-file#exams);
- [list of topics to know](https://raw.githack.com/edrubin/EC421S26/master/midterm/prep/midterm-topics.html);
- [practice problems](https://raw.githack.com/edrubin/EC421S26/master/midterm/prep/midterm-review.html) (no solutions)

The problem sets should also help you review.


## Final exam

Materials to prepare for the in-class final exam (8am on Monday, 08 June 2026):

- [in-class review](final/prep/inclass-review.pdf);
- [past exams](https://github.com/edrubin/EC421S26?tab=readme-ov-file#exams);
- [list of topics to know](https://raw.githack.com/edrubin/EC421S26/master/final/prep/final-topics.html);
- [practice problems](https://raw.githack.com/edrubin/EC421S26/master/final/prep/final-review.html) (no solutions)

The problem sets should also help you review.


## Previous years

Here are links to previous years' course materials as well:

- [Winter 2026](https://github.com/edrubin/EC421W26)
- [Spring 2025](https://github.com/edrubin/EC421S25)
- [Winter 2025](https://github.com/edrubin/EC421W25)
- [Winter 2022](https://github.com/edrubin/EC421W22)
- [Winter 2021](https://github.com/edrubin/EC421W21)
- [Spring 2020](https://github.com/edrubin/EC421S20)
- [Winter 2020](https://github.com/edrubin/EC421W20)
- [Spring 2019](https://github.com/edrubin/EC421S19)
- [Winter 2019](https://github.com/edrubin/EC421W19)


## Homework

Please also see the [syllabus](https://raw.githack.com/edrubin/EC421S26/master/syllabus/syllabus.pdf) for specific information on the homework and grade policies.


## Resources

- [Data Services at the UO library](https://library.uoregon.edu/data-services): includes help desk, consultations, and workshops
- [RStudio Education](https://education.rstudio.com/): free online walkthroughs and [cheatsheets](https://posit.co/resources/cheatsheets/)
- [swirl](https://swirlstats.com/) and [learnr](https://cran.r-project.org/web/packages/learnr/index.html): interactive R tutorials
- [R for Data Science](https://r4ds.had.co.nz/): free online book walking you through R basics
