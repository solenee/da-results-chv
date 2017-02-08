# da-results-chv

##Installation
- Clone da-results-chv repository
- Inside da-results-chv folder, clone distributional-analysis from https://github.com/solenee/distributional-analysis.git
- Add in distributional-analysis two directories named respectively IN and OUTPUT
- In make.sh,
* update TREETAGGER_DIR
* for runing time consideration, set CORPUS_NAME to "poc"

## Run
- Run make.sh script
- You should find the results of the alignement in distributional-analysis/OUTPUT in JSON format. You can use ypur preferred json viewer to display them in a fancier way (e.g. https://jsonformatter.curiousconcept.com/)
- Do not hesitate to provide feedback
