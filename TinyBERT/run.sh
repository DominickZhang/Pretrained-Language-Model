#!/bin/bash

CORPUS_RAW="/mnt/configblob/users/v-jinnian/wiki/text"
BERT_BASE_DIR="/mnt/configblob/users/v-jinnian/bert/trained_models"
CORPUS_JSON_DIR="/mnt/configblob/users/v-jinnian/bert/processed_data"

python pregenerate_training_data.py --train_corpus $CORPUS_RAW --bert_model $BERT_BASE_DIR  --reduce_memory --do_lower_case --epochs_to_generate 3 --output_dir $CORPUS_JSON_DIR