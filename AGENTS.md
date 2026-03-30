# Agents

## General background

*What?* This repository contains the materials for an undergraduate econometrics course (10-weeks in length) at the University of Oregon, taught by [Ed Rubin](https://edrub.in). The course is the second course in a two-course sequence. The preceding course covered the basics of regression analysis. This course explores how the "real world" deviates from the idealized assumptions of the classical linear regression model and introduces methods for addressing these issues. 

*Who?* The students in the course are primarily economics majors.

## Repo layout

The repository has the following structure:

- `./notes/` contains subdirectories (e.g., `./notes/01-intro/`) that divide the course's content into twelve modules that each focus on a particular topic. The notes are written in R Markdown and compiled into HTML files (using the R package `xaringan`) and PDF files (using the R package `pagedown`).

- `./problem-sets/` contains subdirectories (e.g., `./problem-sets/00[0-3]/`) for the course's problem sets. Each subdirectory contains a Quarto file that renders an HTML file for the given problem set. These subdirectories also contain R scripts for processing raw data to generate the datasets used in the problem sets. The R scripts are not intended to be run by students; they are included for transparency and reproducibility.

- `./syllabus/` contains the course syllabus (written in LaTeX via the file `./syllabus/syllabus.tex`).

- The two directories `./final/` and `./midterm/` contain the materials for the course's final and midterm exams, respectively. Each directory contains subdirectories with the exam materials (e.g., `./final/exam/exam-inclass.qmd`), review materials (e.g., `./final/prep/`), and past exams (e.g., `./final/past/`).

At the root of the repository,

- `./Makefile` contains the commands for rendering the course materials (e.g., `make lec01` renders the notes for leture 01; `make lec-all` makes the notes for all lectures.
- `./README.md` contains a longer description of this repository and the course it supports.
- `./NOTE.md` contains some ideas for future improvements to the course materials (currently ideas for R packages to share).
- `./AGENTS.md` (this file) provides a brief description of this course and its repository to help agents understand the context of this repository and its contents.

There are also various git-related files and folders that follow standard usage (e.g., `./.gitignore` and `./.git/`).
