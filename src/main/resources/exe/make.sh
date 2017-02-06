# PARAMETRES
CORPUS_FILE_PATH=$1
CORPUS_NAME="corpus"

# CLEAN WORKSPACE
source clean.sh
echo "$WORKSPACE"

# POS TAGGING
/data/TreeTagger/cmd/tree-tagger-french "${CORPUS_FILE_PATH}" > "${WORKSPACE}/${CORPUS_NAME}.treetagger"

# TODO SET TARGET TERMS : src/main/resources/med_inca_qualitedevie.txt
# TODO SET PAT TERMS : src/main/resources/pat300.txt

# COMPUTE CONTEXTS
java -jar AcquisitionCHV-0.0.1-SNAPSHOT-standalone-nodeScope.jar "${WORKSPACE}" $2
echo "End of context computation"

# COMPUTE SIMILARITIES
sleep 7
cp src/main/resources/output/*.json distributional-analysis/IN/
cd distributional-analysis; python alignement-direct.py
echo "End of similarity computation"

# TODO VIZUALISE SIMILARITIES